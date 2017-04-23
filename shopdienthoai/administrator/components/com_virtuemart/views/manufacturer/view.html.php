<?php
/**
 *
 * Manufacturer View
 *
 * @package	VirtueMart
 * @subpackage Manufacturer
 * @author Patrick Kohl
 * @link https://virtuemart.net
 * @copyright Copyright (c) 2004 - 2010 VirtueMart Team. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 * VirtueMart is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * @version $Id: view.html.php 9413 2017-01-04 17:20:58Z Milbo $
 */

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die('Restricted access');

// Load the view framework
if(!class_exists('VmViewAdmin'))require(VMPATH_ADMIN.DS.'helpers'.DS.'vmviewadmin.php');

/**
 * HTML View class for maintaining the list of manufacturers
 *
 * @package	VirtueMart
 * @subpackage Manufacturer
 * @author Patrick Kohl
 */
class VirtuemartViewManufacturer extends VmViewAdmin {

	function display($tpl = null) {

		// Load the helper(s)


		if (!class_exists('VmHTML'))
			require(VMPATH_ADMIN . DS . 'helpers' . DS . 'html.php');


		// get necessary models
		$model = VmModel::getModel('manufacturer');

		$categoryModel = VmModel::getModel('manufacturercategories');

		$this->SetViewTitle();

		$layoutName = vRequest::getCmd('layout', 'default');
		if ($layoutName == 'edit') {

			$this->manufacturer = $model->getManufacturer();

			$isNew = ($this->manufacturer->virtuemart_manufacturer_id < 1);

			$model->addImages($this->manufacturer);

			/* Process the images */
			$mediaModel = VmModel::getModel('media');
			$mediaModel -> setId($this->manufacturer->virtuemart_media_id);
			$image = $mediaModel->getFile('manufacturer','image');

			$this->manufacturerCategories = $categoryModel->getManufacturerCategories(false,true);

			$this->addStandardEditViewCommands($this->manufacturer->virtuemart_manufacturer_id);

			if(!class_exists('VirtueMartModelVendor')) require(VMPATH_ADMIN.DS.'models'.DS.'vendor.php');
			$this->virtuemart_vendor_id = VirtueMartModelVendor::getLoggedVendor();

		}
		else {

			$mainframe = JFactory::getApplication();

			$categoryFilter = $categoryModel->getCategoryFilter();

			$this->addStandardDefaultViewCommands();
			$this->addStandardDefaultViewLists($model,'mf_name');

			$this->manufacturers = $model->getManufacturers();
			$this->pagination = $model->getPagination();

			$virtuemart_manufacturercategories_id	= $mainframe->getUserStateFromRequest( 'com_virtuemart.virtuemart_manufacturercategories_id', 'virtuemart_manufacturercategories_id', 0, 'int' );
			$this->lists['virtuemart_manufacturercategories_id'] =  JHtml::_('select.genericlist',   $categoryFilter, 'virtuemart_manufacturercategories_id', 'class="inputbox" onchange="this.form.submit()"', 'value', 'text', $virtuemart_manufacturercategories_id );

		}


		parent::display($tpl);
	}

}
// pure php no closing tag
