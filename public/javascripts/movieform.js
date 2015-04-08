 $( document ).ready(function() {
   /* // just for the demos, avoids form submit
    jQuery.validator.setDefaults({
      debug: true,
      success: "valid"
    }); */
     $("#movie").validate({
        rules: {
          "movie[title]":"required",
          "movie[format]":"required",
          "movie[length]": {
            required:true,
            min: 1,
            max: 500
          },
          "movie[release_year]": {
            required:true,
            min: 1800,
            max: 2100
          },
          "movie[rating]":"required"
        },
        messages:{
          "movie[title]":"Please enter a movie title",
          "movie[format]":"Please select a movie format",
          "movie[length]": {
            required: "Please enter the movie length in minutes",
            min: "The minimum movie length is 1 minute",
            max: "The Maximum movie length is 500 minutes"
          },
          "movie[release_year]": {
            required: "Please enter a release year",
            min: "The minimum release year is 1800",
            max: "The maximum relase_yaer is 2100"
          },
          "movie[rating]":{
            required: "Please select a rating"
           }    

        }
      });
 });
