<?php
	$currDir = dirname(__FILE__);
	require("{$currDir}/incCommon.php");

	// xác thực đầu vào
	$groupID = intval($_GET['groupID']);

	// đảm bảo nhóm không có thành viên
	if(sqlValue("select count(1) from membership_users where groupID='{$groupID}'")){
		errorMsg($Translation["can not delete group remove members"]);
		include("{$currDir}/incFooter.php");
	}

	//đảm bảo rằng nhóm không có hồ sơ
	if(sqlValue("select count(1) from membership_userrecords where groupID='{$groupID}'")){
		errorMsg($Translation["can not delete group transfer records"]);
		include("{$currDir}/incFooter.php");
	}
	sql("delete from membership_groups where groupID='{$groupID}'", $eo);
	sql("delete from membership_grouppermissions where groupID='{$groupID}'", $eo);

	if($_SERVER['HTTP_REFERER']){
		redirect($_SERVER['HTTP_REFERER'], TRUE);
	}else{
		redirect("admin/pageViewGroups.php");
	}

?>
