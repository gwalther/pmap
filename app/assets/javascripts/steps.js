
$(function(){
	$(".step_block").each(

		function(){

			var step_order = $(this).attr("data-order");

			//alert("order: " + step_order);

			$(this).css('left', function(index){

				var pos = ((step_order - 1) * 225) + 20;
				return pos;
				
			});

			//alert(this.id + " " + step_order + " " + $(this).css("left"));
		}
	);

});
