<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script type="text/javascript">
	$(document).ready(function() {
		$('#datatable').dataTable();

		$("[data-toggle=tooltip]").tooltip();

	});
</script>
<style>
fieldset.scheduler-border {
	border: 1px groove #ddd !important;
	padding: 0 1.4em 1.4em 1.4em !important;
	margin: 0 0 1.5em 0 !important;
	-webkit-box-shadow: 0px 0px 0px 0px #000;
	box-shadow: 0px 0px 0px 0px #000;
}

legend.scheduler-border {
	font-size: 1.2em !important;
	font-weight: bold !important;
	text-align: left !important;
	width: auto;
	padding: 0 10px;
	border-bottom: none;
}

body {
	font-family: Arial;
}

* {
	box-sizing: border-box;
}

form.example input[type=text] {
	padding: 7px;
	font-size: 17px;
	border: 1px solid grey;
	float: left;
	width: 100%;
	background: #FFFFFF;
}

form.example button {
	float: left;
	width: 13%;
	padding: 11px;
	background: *;
	color: white;
	font-size: 17px;
	border: 1px solid grey;
	border-left: none;
	cursor: pointer;
}

form.example button:hover {
	background: #A9A9A9;
}

form.example::after {
	content: "";
	clear: both;
	display: table;
}

.button {
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}
</style>
</head>


<body>
	<div class="container">
		<div class="row row-space">
			<div class="col-xs-12">
				<div class="col-xs-12">
					<div class="panel-body">
						<fieldset class="scheduler-border">
							<legend class="scheduler-border">จัดการข้อมูลพนักงาน</legend>
							<form class="example" action="/action_page.php"
								style="margin: auto; max-width: 300px">
								<input type="text" placeholder="Search.." name="search2">
							</form>
							<br>
							<div class="col-sm-12 text-center">
								<button id="btnSearch" type="button" class="btn btn-primary">ค้นหา</button>
								<button class="btn btn-warning" type="reset" id="btnClear">ล้างข้อมูล</button>
							</div>
						</fieldset>
					</div>
				</div>
			</div>
		

	<div class="row row-space">
			<div class="col-sm-12 text-right" id="">
				<div class="col-sm-8"></div>
				<div class="col-sm-4">
					<p class="alignright" style="font-size: 18px">
						<a class="fa fa-plus-circle" id="new-role" name="new-role"></a> 
						<a type="button" id="new-role" name="new-role" data-toggle="modal" data-target="#myModal"> สร้าง </a>
					</p>
					</div>
				</div>
					 <!-- Modal -->
			  <div class="modal fade" id="myModal" role="dialog">
			    <div class="modal-dialog modal-lg">
			    
			      <!-- Modal content-->
			      <div class="modal-content">
			        <div class="modal-header bg-primary ">
			          <button type="button" class="close" data-dismiss="modal">&times;</button>
			          <h4 class="modal-title ">เพิ่มผู้ใช้งานระบบ</h4>
			        </div>
			        <div class="modal-body">
			  
			          	<div class="row row-space">
							<div class="col-xs-12">
                                <div class="col-xs-6">
                                    <label class="col-sm-4 nopadding control-label text-right">รหัส :</label>
                                    <div class="col-sm-8 nopadding"  style="margin-left:-25px">
                                        <div class='inner-addon right-addon'>
                                            <input type="text" class="form-control input-height " name="svalue" id="svalue"/>
                                            <!--                                            input-group date-->

                                        </div> 
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <label class="control-label col-xs-4 text-right">
                                        ตำแหน่ง :
                                    </label>
                                    <div class="col-xs-8"  style=" margin-left: -25px;">
                                        <select class="form-control input-height" name="acitve-search" id="acitve-search">
                                            <option value="">กรุณาเลือก</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                           </div>
                            
                            <br>
                            
                            <div class="row row-space">
                            <div class="col-xs-12">
                                <div class="col-xs-6">
                                    <label class="col-sm-4 nopadding control-label text-right">ชื่อ :</label>
                                    <div class="col-sm-8 nopadding"  style="margin-left:-25px">
                                        <div class='inner-addon right-addon'>
                                            <input type="text" class="form-control input-height " name="svalue" id="svalue"/>
                                            <!--                                            input-group date-->

                                        </div> 
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <label class="control-label col-xs-4 text-right">
                                        สถานะผู้ใช้ :
                                    </label>
                                    <div class="col-xs-8"  style=" margin-left: -25px;">
                                        <select class="form-control input-height" name="acitve-search" id="acitve-search">
                                            <option value="">กรุณาเลือก</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            </div>
                            
                            <br>
                            
                       <div class="row row-space">     
                      	<div class="col-xs-12">
                                <div class="col-xs-6">
                                    <label class="col-sm-4 nopadding control-label text-right">นามสกุล :</label>
                                    <div class="col-sm-8 nopadding"  style="margin-left:-25px">
                                        <div class='inner-addon right-addon'>
                                            <input type="text" class="form-control input-height " name="svalue" id="svalue"/>
                                            <!--                                            input-group date-->

                                        </div> 
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                   
                                    </div>
                                </div>
                            </div>
                           
                            
                            <br>
                           
                            <div class="row row-space">
                            <div class="col-xs-12">
                                <div class="col-xs-6">
                                    <label class="col-sm-4 nopadding control-label text-right">เบอร์โทรศัพท์ :</label>
                                    <div class="col-sm-8 nopadding"  style="margin-left:-25px">
                                        <div class='inner-addon right-addon'>
                                            <input type="text" class="form-control input-height " name="svalue" id="svalue"/>
                                            <!--                                            input-group date-->

                                        </div> 
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <label class="control-label col-xs-4 text-right">
                                        ชื่อผู้ใช้ :
                                    </label>
                                    <div class="col-xs-8"  style=" margin-left: -25px;">
                                        <input type="text" class="form-control input-height " name="svalue" id="svalue"/>
                                    </div>
                                </div>
                            </div>
                            </div>
                            
                            <br>
                            
                            <div class="row row-space">
                            <div class="col-xs-12">
                                <div class="col-xs-6">
                                    <label class="col-sm-4 nopadding control-label text-right">อีเมล์ :</label>
                                    <div class="col-sm-8 nopadding"  style="margin-left:-25px">
                                        <div class='inner-addon right-addon'>
                                            <input type="text" class="form-control input-height " name="svalue" id="svalue"/>
                                            <!--                                            input-group date-->

                                        </div> 
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <label class="control-label col-xs-4 text-right">
                                        รหัสผู้ใช้ :
                                    </label>
                                    <div class="col-xs-8"  style=" margin-left: -25px;">
                                          <input type="text" class="form-control input-height " name="svalue" id="svalue"/>
                                    </div> 
                                </div>
                            </div>
                            </div>   
			
						<br>
					
						
					<div class="text-center">
						<button type="button" class="btn btn-success" id="save-event">บันทึก</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">ยกเลิก</button>
						</div>
			        </div>
			   	</div>
			      </div>
      
			    </div>
			  </div>
			
		</div>
		<div class="row row-space">

				<table id="datatable" class="table table-striped table-bordered"
					cellspacing="0" width="100%">
					<thead>
						<tr>
						
							<th>ลำดับ</th>
							<th>ชื่อพนักงาน</th>
							<th>วันที่ขอลง OT</th>
							<th>เวลาที่เริ่มทำ OT</th>
							<th>เวลาที่สิ้นสุดทำ OT</th>
							<th>สถานะ</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>System Architect</td>
							<td>10/02/2019</td>
							<td>18.00</td>
							<td>20.00</td>
							<td>ใช้งาน</td>
							<td><p data-placement="top" data-toggle="tooltip"
									title="Edit">
									<button class="btn btn-primary btn-xs" data-title="Edit"
										data-toggle="modal" data-target="#edit">
										<span class="glyphicon glyphicon-pencil"></span>
									</button>
								</p></td>
							<td><p data-placement="top" data-toggle="tooltip"
									title="Delete">
									<button class="btn btn-danger btn-xs" data-title="Delete"
										data-toggle="modal" data-target="#delete">
										<span class="glyphicon glyphicon-trash"></span>
									</button>
								</p></td>
						</tr>

						
					</tbody>
				</table>
			</div>
	

	<div class="modal fade" id="edit" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header bg-primary">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title custom_align" id="Heading">แก้ไขข้อมูลรายการลงโอทีของพนักงาน</h4>
				</div>
				<div class="modal-body">
									<div class="row">
							<div class="col-xs-12">
								<label class="col-xs-5" style="text-align: right;">ชื่อพนักงาน:</label>
							 <div class="col-xs-5"  style=" margin-left: -25px;">
								<input class="form-control input-height" type="text" name="description" id="description" />
							</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-xs-12">
								<label class="col-xs-5" style="text-align: right;">วันที่ลง OT :</label> 
								<div class="col-xs-5"  style=" margin-left: -25px;">
								<input type="hidden" name="starts-at" id="starts-at" /> 
								<input class="form-control input-height" type="text" id="starttime" name="starttime" class="timepicker" />
							</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-xs-12">
								<label class="col-xs-5" style="text-align: right;">เวลาที่เริ่ม OT :</label> 
								<div class="col-xs-5"  style=" margin-left: -25px;">
								<input type="hidden" name="starts-at" id="starts-at" /> 
								<input class="form-control input-height" type="text" id="starttime" name="starttime" class="timepicker" />
							</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-xs-12">
								<label class="col-xs-5" style="text-align: right;">เวลาสิ้นสุด OT :</label> 
								<div class="col-xs-5"  style=" margin-left: -25px;">
								<input type="hidden" name="ends-at" id="ends-at" /> 
								<input class="form-control input-height" type="text" id="endtime" name="endtime" class="timepicker" />
							</div>
							</div>
						</div>
						<br>
						<div class="row">
						   <div class="col-xs-12">
                                    <label class="control-label col-xs-5 text-right">
                                        สถานะ :
                                    </label>
                                    <div class="col-xs-5"  style=" margin-left: -25px;">
                                        <select class="form-control input-height" name="acitve-search" id="acitve-search">
                                            <option value="">กรุณาเลือก</option>
                                        </select>
                                    </div>
                                </div>
                                </div>
				
				</div>
				<div class="modal-footer ">
					<button type="button" class="btn btn-warning btn-lg"
						style="width: 20%;">
						<span class="glyphicon glyphicon-ok-sign"></span> Update
					</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>



	<div class="modal fade" id="delete" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header bg-primary">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title custom_align" id="Heading">ลบรายการ</h4>
				</div>
				<div class="modal-body">

					<div class="alert alert-danger">
						<span class="glyphicon glyphicon-warning-sign"></span> คุณต้องการลบรายการนี้ใช่หรือไม่?
					</div>

				</div>
				<div class="modal-footer ">
					<button type="button" class="btn btn-success">
						<span class="glyphicon glyphicon-ok-sign"></span>ยืนยัน
						</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span> ยกเลิก
					</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	</div>
</body>
</html>