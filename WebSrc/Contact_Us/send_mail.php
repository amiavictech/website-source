<?php

session_start();
    $email_subject = "AMIA Monthly Meeting and Dinner Aug 4th Saturday -";
    $full_name = $_POST['Full_Name']; // required
    $email_from = $_POST['Email_Address']; // required
    $adl_cnt=$_POST['adltCnt']; // required
    $kid_cnt=$_POST['kidCnt']; // required




    if (isset($_POST['accept']) && $_POST['accept'] == 'Yes') {
        $email_subject.='#Accepted'.'#'.$adl_cnt.'#'.$kid_cnt;
    }
    if (isset($_POST['decline']) && $_POST['decline'] == 'Yes') {
        $email_subject.='#Declined'.'#'.$adl_cnt.'#'.$kid_cnt;
    }
    $variables = array($full_name, $email_from, $adl_cnt, $kid_cnt);
    $replaceables = array('{{userName}}','{{email}}','{{adlCnt}}','{{kdCnt}}');
    ob_start();
    include('thankyou.tpl');
    $ob = ob_get_clean();

    if (filter_var($email_from, FILTER_VALIDATE_EMAIL)) {
        $headers = 'From: '.$email_from."\r\n".
        'Reply-To: '.$email_from."\r\n" .
        'X-Mailer: PHP/' . phpversion();
        mail('amiavictech@gmail.com', $email_subject, "T", $headers);
        #header("Location: confirm.htm");

        echo(str_replace($replaceables,$variables,$ob));
    }

?>

