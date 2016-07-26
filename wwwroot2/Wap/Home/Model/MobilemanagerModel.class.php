<?php
namespace Home\Model;
use Think\Model;
class MobilemanagerModel extends Model{
	protected $arr = array();
	protected $ArrDelete = array();
	protected $ArrUpdate = array();
	
	
	protected $_validate = array(
			array('wMB','require','{%Cmobile_n}'),
			array('wMB','/^[1-9]\d{4,15}$/','{%S_mobile_g}'),
			array('wName','require','{%Cname_n}'),
	);
	
	public function CheckPid($Pid){
		$ListPid = $this->where(array('wUseID' => session('wUseID')))->field('Pid')->select();
		$ListPidO = TarrayToOarray($ListPid, 'Pid');
		if(in_array($Pid, $ListPidO)){
			return true;
		}else{
			return false;
		}
	}
	
	public function ReUpdateMobileInfo(){
		$list = $this->where(array('wUseID' => session('wUseID')))->field('Pid, McID, McName')->order(array('Pid'=>'desc'))->select();
		foreach ($list as $k => $v){
			$list[$k]['Pid'] = encode($v['Pid'], C('GRYPTKEY'));
		}
		S('List_Mobile_Cache_'.session('pid'), $list);
		if(!S('List_Mobile_Cache_'.session('pid'))){
			return $list;
		}
		return S('List_Mobile_Cache_'.session('pid'));
	}

	public function UpdateMobileDeleteInfo($pid){
		if(S('List_Mobile_Cache_'.session('pid'))){
			$key = FindArrKey(S('List_Mobile_Cache_'.session('pid')), 'Pid', $pid);
			$this->ArrDelete = S('List_Mobile_Cache_'.session('pid'));
			unset($this->ArrDelete[$key]);
			S('List_Mobile_Cache_'.session('pid'), $this->ArrDelete);
		}
	}
	
	public function UpdateMobileInfo($arr ,$pid){
		if(S('List_Mobile_Cache_'.session('pid'))){
			$key = FindArrKey(S('List_Mobile_Cache_'.session('pid')), 'Pid', $pid);
			$this->ArrUpdate = S('List_Mobile_Cache_'.session('pid'));
			$this->ArrUpdate[$key]['McName'] = $arr['McName'];
			//$this->ArrUpdate[$key]['IsMsg'] = $arr['IsMsg'];
			S('List_Mobile_Cache_'.session('pid'), $this->ArrUpdate);
		}
	}
	

}