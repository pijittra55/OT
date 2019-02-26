<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
body {
	font-family: "Open Sans", -apple-system, BlinkMacSystemFont, "Segoe UI",
		Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", Helvetica,
		Arial, sans-serif;
}

#outer
{
    width:100%;
    text-align: center;
}
.inner
{
    display: inline-block;
}

#calendar {
	max-width: 1150px;
	margin: 0 auto;
}

.wickedpicker {
	position: absolute;
	left: 0px;
	top: 0px;
	z-index: 9999;
}

.reveal-modal {button { text-align:center;
	width: 100%;
}


</style>
<script type="text/javascript">
	var tempEvent = {};
	$(document).ready(function() {

		$('#calendar').fullCalendar({
			header : {
				left : 'prev,next today',
				center : 'title',
				right : ''

			},
			//defaultDate : '2016-09-12'
			navLinks : true, // can click day/week names to navigate views
			selectable : true,
			selectHelper : true,
			locale : 'th',
			businessHours : {
				start : '18 : 00',
				end : ''
			},
			select : function(start, end) {
				setstart = moment(start).format('YYYY-MM-DD');
				setend = moment(end).format('YYYY-MM-DD');
				//console.log('start : ', start);
				//console.log('end : ', end);
				//Display the modal.
				//You could fill in the start and end fields based on the parameters
				$('#modal1').modal('show');
				$('#starts-at').val(setstart);
				$('#ends-at').val(setend);
				
				$("#save").css("display", "block");
				$("#update").css("display", "none"); 
				$("#save-event").css("display", "block");
				$("#update-event").css("display", "none");  
			},
			eventClick : function(event, element) {
				tempEvent = event;
				
				console.log('event :', event);
				$('#description').val(event.title);
				$('#starts-at').val(event.start);
				$('#ends-at').val(event.end);
				$('#starttime').val(event.timestart);
				$('#endtime').val(event.timeend);
				
				$("#save").css("display", "none");
				$("#update").css("display", "block");
				$("#save-event").css("display", "none");
				$("#update-event").css("display", "block");
				$('#modal1').modal('show');

				//$('#calendar').fullCalendar('updateEvent', event);

			},
			editable : true,
			eventLimit : true,
			startEditable : false,
		//droppable : true, // this allows things to be dropped onto the calendar
		//	drop : function() {
		// is the "remove after drop" checkbox checked?
		//if ($('#drop-remove').is(':checked')) {
		// if so, remove the element from the "Draggable Events" list
		//	$(this).remove();
		//	}
		//	}

		// allow "more" link when too many events

		});

		// Bind the dates to datetimepicker.
		// You should pass the options you need
		//$("#starts-at, #ends-at").datetimepicker();

		// Whenever the user clicks on the "save" button om the dialog
		$('#save-event').on('click', function() {
			var title = $('#description').val();
			console.log('title : ', title);
			if (title !== undefined && title != '') {
				var eventData = {
					title : $('#description').val(),
					start : $('#starts-at').val(),
					end : $('#ends-at').val(),
					timestart : $('#starttime').val(),
					timeend : $('#endtime').val()
				};
				console.log("eventData", eventData);
				$('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true

			}
			$('#calendar').fullCalendar('unselect');

			// Clear modal inputs
			$('#modal1').find('input').val('');

			// hide modal
			$('#modal1').modal('hide');
		});

		$('#update-event').on('click', function() {
			swal({
				  title: "คุณยืนยันที่จะแก้ไขหรือไม่?",
				  text: "คุณสามารถยกเลิกสิ่งนี้ได้!",
				  icon: "warning",
				  buttons: true,
				  dangerMode: false,
				})
				.then((willDelete) => {
				  if (willDelete) {
				    swal("แก้ไขข้อมูลเสร็จสิ้น!", {
				      icon: "success",
				    });
				  } else {
				    swal("ยกเลิกการแก้ไขแล้ว!");
				  }
				});
			var title = $('#description').val();
			console.log('title : ', title);
			if (title !== undefined && title != '') {
				/* var eventData = {
					title : $('#description').val(),
					start : $('#starts-at').val(),
					end : $('#ends-at').val(),
					timestart : $('#starttime').val(),
					timeend : $('#endtime').val()
				}; */
				tempEvent.title = $('#description').val();
				tempEvent.start = $('#starts-at').val();
				tempEvent.end = $('#ends-at').val();
				tempEvent.timestart = $('#starttime').val();
				tempEvent.timeend = $('#endtime').val();
				console.log("tempEvent", tempEvent);
				$('#calendar').fullCalendar('updateEvent', tempEvent); // stick? = true
			}
			//$('#calendar').fullCalendar('unselect');

			// Clear modal inputs
			$('#modal1').find('input').val('');

			// hide modal
			$('#modal1').modal('hide');
			tempEvent = {};

		});

		$('#starttime').wickedpicker({
			twentyFour : true,
			title : 'time',
			now : "18 : 00"

		});

		$('#endtime').wickedpicker({
			twentyFour : true,
			title1 : '',
			now : "00 : 00"
		});
	});
</script>

<div id='container'>
	<div class="row row-space">
		<div id='calendar'></div>
		
		<div class="modal fade" tabindex="-1" role="dialog" id="modal1">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header bg-primary">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="save">บันทึกรายการขอลง OT</h4>
						<h4 class="modal-title" id="update">แก้ไขรายการขอลง OT</h4>
					</div>
					<div class="modal-body">

						<div class="row">
							<div class="col-xs-12">
								<label class="col-xs-5" style="text-align: right;">งานที่จะทำ:</label>
							 <div class="col-xs-5"  style=" margin-left: -25px;">
								<input class="form-control input-height" type="text" name="description" id="description" />
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
						
					<div id="outer">
						<div class="inner"><button type="button" class="btn btn-success" id="update-event">ยืนยัน</button></div>
						<div class="inner"><button type="button" class="btn btn-success" id="save-event">บันทึก</button></div>
						<div class="inner"><button type="button" class="btn btn-danger" data-dismiss="modal">ยกเลิก</button></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.modal-content  -->
	</div>
</div>
