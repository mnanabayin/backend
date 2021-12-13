# Getting Started with Php Back End of a simple search app

End point

GET
/backend/api?q=<search_parameter>

RESULT

[
  {
    "status": true,
    "message": "Success",
    "total": 6,
    "data": [
      {
        "p_name": "ABOUT YOU",
        "p_img_src": "/xxxx/aa.png",
        "p_incentive": "xxxxx",
        "p_url": "/aboutu"
      },
      {
        "p_name": "Babista",
        "p_img_src": "/test/test.png",
        "p_incentive": "xxxxx",
        "p_url": "/babista"
      },
      ...
    ]
  }
]

### This uses a MySql Database
### Xampp Can be installed and used accordingly
### Database file .sql can be imported 


Runs the app in the xampp environment or apache server


