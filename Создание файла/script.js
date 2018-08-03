

$(document).ready(function() {
    doc_w = $(document).width();
    doc_h = $(document).height();
	$.post(
		"hand.php",
		{
			param1: doc_h+"X"+doc_w
		},
		onAjaxSuccess
		);

	function onAjaxSuccess(data)
	{
		$("#text").append(data);
	}
});