var homeController = {
    init: function () {
        homeController.loadData();
    },


    loadData: function () {
        $.ajax({
            url: 'test/loadData',
            type: 'GET',
            dataType: 'json',
            success: function (response) {

                $("tbody#tblData").html("");
                $(response).each(function (i, e) {
                    var tr = $("<tr\>");
                    $("<td\>").html(e.UserName).appendTo(tr);
                    $("<td\>").html(e.Name).appendTo(tr);
                    tr.appendTo("tbody#tblData");
                });
            }
        });
    }

   
}