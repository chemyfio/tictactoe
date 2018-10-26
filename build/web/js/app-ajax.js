
$(document).ready(function() {
    $("td").click(function(event){
        $.ajax({
            url : 'InsertMoveServlet',
            data: {
                position: event.target.id,
            },
            success : function(response) {
//                console.log(response);
                var res = response.split("|");
                console.log(res);
                if(res[0] == 1){
                    $("#img"+event.target.id).attr("src","./res/icons8-delete-96.png");
                }else if(res[0] == 2){
                    $("#img"+event.target.id).attr("src","./res/icons8-circle-96.png");
                }
                
                switch(res[1]){
                    case "1":
                        $("#result-img").attr("src", "./res/icons8-flag-filled-48.png");
                        $("#result-text").text("It's a Draw! Bye!");
                        document.getElementById("modal-result").style.display = "block";
                        break;
                    case "2":
                        $("#result-img").attr("src", "./res/icons8-delete-96.png");
                        $("#result-text").text("You're the winner!!");
                        
                        document.getElementById("modal-result").style.display = "block";
                        break;
                    case "3":
                        $("#result-img").attr("src", "./res/icons8-circle-96.png");
                        $("#result-text").text("You're the winner!!");
                        document.getElementById("modal-result").style.display = "block";
                        break;
                }
                
                 
            }
        });
    });
    
    $(".reset").click(function (){
       $.ajax({
           url : 'ResetServlet',
           success : function(){
               var i, j = 0;
               for(i = 0; i < 3; i++){
                   for(j = 0; j < 3; j++){
                       $("#img"+i+j).attr("src", "");
                   }
               }
//               $('image').attr('src', '');
           }
       }); 
    });
});