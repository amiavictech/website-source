<!DOCTYPE html>
<html>

<head>
  <title>Send Response</title>
  <meta charset="ISO-8859-1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <script type="text/javascript" src="../jquery.js">
  </script>
  <script type="text/javascript" src="../navbars.js">
  </script>
  <style type="text/css">
    @font-face {
      font-family: 'PT Sans';
      src: url('../PT_Sans-Web-Regular.eot');
      src: local('\263A'), url('../PT_Sans-Web-Regular.eot') format('embedded-opentype'),
      url('../PT_Sans-Web-Regular.ttf') format('truetype'),
      url('../PT_Sans-Web-Regular.svg') format('svg');
      font-weight: 400;
      font-style: normal;
    }

    @font-face {
      font-family: 'Open Sans';
      src: url('../OpenSans-Regular.eot');
      src: local('\263A'), url('../OpenSans-Regular.eot') format('embedded-opentype'),
      url('../OpenSans-Regular.ttf') format('truetype'),
      url('../OpenSans-Regular.svg') format('svg');
      font-weight: normal;
      font-style: normal;
    }
  </style>
  <link rel="stylesheet" type="text/css" href="../fusion.css">
  <link rel="stylesheet" type="text/css" href="../style.css">
  <link rel="stylesheet" type="text/css" href="../site.css">
  <style type="text/css" title="NOF_STYLE_SHEET">
    < !-- body {
      margin: 0px;
      width: 960px;
    }

    div#LayoutLYR {
      float: left;
      position: absolute;
    }

    div#NavigationBar1LYR {
      position: absolute;
      top: 102px;
      left: 225px;
      width: 480px;
      height: 56px;
      z-index: 1
    }

    div#NavigationBar2LYR {
      position: absolute;
      top: 933px;
      left: 110px;
      width: 657px;
      height: 17px;
      z-index: 2
    }

    div#Picture13LYR {
      position: absolute;
      top: 11px;
      left: 100px;
      width: 118px;
      height: 160px;
      z-index: 3
    }

    div#Text180LYR {
      position: absolute;
      top: 42px;
      left: 227px;
      width: 597px;
      height: 21px;
      z-index: 4
    }

    div#Text107LYR {
      position: absolute;
      top: 198px;
      left: 110px;
      width: 672px;
      height: 513px;
      z-index: 5
    }

    div#LayoutRegion1LYR {
      position: relative;
      float: left;
      top: 0;
      left: 0;
      width: 672px;
      height: 324px;
      z-index: 1;
    }

    -->
  </style>
<script>
  function CheckAccept(){

    document.getElementById("acceptcheckbox").checked = true;
    document.getElementById("Confirmationform").submit();
  }
  function CheckDecline(){
    document.getElementById("declinecheckbox").checked = true;
    document.getElementById("Confirmationform").submit();
  }
</script>
  <link rel="stylesheet" type="text/css" href="contactform.css">
</head>

<body>
  <div id="LayoutLYR">
    <div id="Text107LYR" class="TextObject">
    <form name="Confirmationform" id="Confirmationform" method="POST" action="send_mail.php" >
      <div style='line-height:2'>
        <div style='font-family:Roboto,Helvetica,Arial,sans-serif;background-color:rgb(55,135,169);font-color:#ffffff;font-size:20px;vertical-align:middle'>AMIA Monthly Meet - Family Gathering & Dinner - <?php echo $dateTime; ?></div>

        <div>
          Bismillah Walhamdulillah Wa Salaatu Wa Salaam 'ala Rasulillah
        </div>
        <div>Assalamu Alaikum Wa Rahmatullahi Wa Barakaathuhu
        </div>
        <br/>
        <input type="hidden" name="Email_Address" id="Email_Address" value="<?php echo $email; ?>">
        <input type="hidden" name="Full_Name" id="Full_Name" value="<?php echo $userName; ?>">
        Dear <?php echo $userName; ?>,
        <div>
          <br/>
          <p>
            AMIA is happy to invite you along with your family for our next monthly gathering, In Sha Allah.
          </p>
        </div>
        <div style='line-height:1.5'>
          Venue: Central Park Community Centre, 80 Lonsdale Circuit, Hoppers Crossing VIC 3029.
          <br>Date & Time: <?php echo $dateTime; ?>"

        </div>
        <div>
        <br/>
          <p>
            We request you to confirm your availability by accepting this invitation.
          </p>
        </div>
        <div>
          <label>Number of Adults</label> : <select id="adltCnt" name="adltCnt">
          <?php
            foreach ($numberArray as $key => $value) {
                if ($value == $adlCnt) {
                    echo('<option selected="selected" value='.$value.'>'.$value.'</option>');
                } else {
                    echo('<option value='.$value.'>'.$value.'</option>');
                }
            }
            ?>
          </select>

        </div>
        <div>
          <label>Number of Children</label> :

          <select name="kidCnt" id="kidCnt">
          <?php
            foreach ($numberArray as $key => $value) {
                if ($value == $kdCnt) {
                    echo('<option selected="selected" value='.$value.'>'.$value.'</option>');
                } else {
                    echo('<option value='.$value.'>'.$value.'</option>');
                }
            }
            ?>
          </select>

        </div>
        <br>
        <input type="checkbox" name="accept" id="acceptcheckbox" style="display: none" value="Yes">
        <input type="checkbox" name="decline" id="declinecheckbox" style="display: none" value="Yes">
        
        <input type="button" name="acceptbutton" style="color:rgb(255,255,255);border-top-left-radius:3px;border-top-right-radius:3px;border-bottom-right-radius:3px;border-bottom-left-radius:3px;box-sizing:border-box;display:inline-block;font-size:13px;font-weight:700;height:40px;line-height:40px;padding:0px 24px;text-align:center;text-decoration:none;text-transform:uppercase;vertical-align:middle;background-color:rgb(55,135,169)"
        value="Accept" id="Accept" onclick="CheckAccept()"/>
        
        <span style="left-margin:10px"></span>

        <input type="button" name="declinebutton"  style="color:rgb(255,255,255);border-top-left-radius:3px;border-top-right-radius:3px;border-bottom-right-radius:3px;border-bottom-left-radius:3px;box-sizing:border-box;display:inline-block;font-size:13px;font-weight:700;height:40px;line-height:40px;padding:0px 24px;text-align:center;text-decoration:none;text-transform:uppercase;vertical-align:middle;background-color:rgb(55,135,169)"
        value="Decline" id="Decline" onclick="CheckDecline()"/>

        
        <div>
        <br/>
          <p>
            Jazakumullahu Khairan
          </p>
        </div>
        <br>
        <div>
          AMIA Victoria
          <br> amiavictoria@gmail.com
        </div>

      </div>
    </form>
    </div>
    <div id="NavigationBar1LYR" style="z-index: 1000">
      <ul id="NavigationBar1" style="z-index: 1000; display: none;">
        <li id="NavigationButton1">
          <a href="../index.html" title="Home" style="line-height: 0">Home</a>
        </li>
        <li id="NavigationButton2">
          <a href="../Mission/mission.html" title="Mission" style="line-height: 0">Mission</a>
        </li>
        <li id="NavigationButton3">
          <a href="../Events/events.html" title="Events" style="line-height: 0">Events</a>
          <ul id="NavigationBar1_1">
            <li id="NavigationButton5">
              <a href="../Events/Past_Events/past_events.html" title="Past Events" style="line-height: 0">Past Events</a>
            </li>
          </ul>
        </li>
        <li id="NavigationButton4">
          <a href="../Contact_Us/contact_us.html" title="Contact Us" style="line-height: 0">Contact Us</a>
        </li>
      </ul>
    </div>
    <div id="NavigationBar2LYR" style="text-align: left; z-index: 1000;" class="TextNavBar">
      <a class="nof-navPositioning" href="../index.html">Home</a>&nbsp;&nbsp;
      <a class="nof-navPositioning" href="../Mission/mission.html">Mission</a>&nbsp;&nbsp;
      <a class="nof-navPositioning" href="../Events/events.html">Events</a>&nbsp;&nbsp; Contact&nbsp;Us&nbsp; </div>
    <div id="Picture13LYR" style="line-height: 0">
      <img id="Picture13" height="160" width="118" src="../logo.png" alt="logo" title="logo">
    </div>
    <div id="Text180LYR" class="TextObject" style="font-size: 28px; border-left-style: none; border-top-style: none; border-right-style: none; border-bottom-style: none;">
      <p style="text-align: center; margin-bottom: 0px;">
        <b>
          <span style="font-size: 24px; font-weight: bold;">AUSTRALIAN MALAYALEE ISLAMIC ASSOCIATION</span>
        </b>
      </p>
    </div>
  </div>
</body>

</html>