
$(document).ready(function(){
    function myFunction($id,$i) {
        var id = $id;
        var i = $i;
        var rezultat = document.getElementsByName("rez")[i].value;
        var goal1 = rezultat.substring(0,1);
        var goal2 = rezultat.substring(2,3);
        $.ajax({
            type: "POST",
            url: "positions.php",
            data: { id: id, rezultat: rezultat, goal1: goal1, goal2: goal2},
            success: function (result) {
                $("#tabela").html(result);
            }
        });
    }
});


