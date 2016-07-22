/*
    USAGE:
    $('#your_node').horizontalScroll(100); // You can pass (optionally) scrolling amount
*/

(function($){
    $.fn.horizontalScroll = function (amount) {
        amount = amount || 120;

        $(this)
            .bind("mouseover", function(){
                $(this).data("user_is_interacting", true);
            })
            .bind("mouseout", function(){
                $(this).data("user_is_interacting", false);
            })
            .bind("DOMMouseScroll mousewheel", function (event) {
                var oEvent    = event.originalEvent,
                    deltaX    = Math.abs(oEvent.wheelDeltaX),
                    deltaY    = Math.abs(oEvent.wheelDeltaY);

                if( $(this).data("user_is_interacting") && deltaX < deltaY ){
                    var direction = oEvent.detail ? oEvent.detail * -amount : oEvent.wheelDelta,
                    position      = $(this).scrollLeft();
                    position     += direction > 0 ? -amount : amount;

                    $(this).scrollLeft(position);
                    event.preventDefault();
                }
            });
    };
})(jQuery)
