<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding =
"UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>request</title>
    <style>
    table *{
      border:1px solid black;
    }
    </style>
  </head>
  <body>
   <!-- * request (cf. get): 현재 페이지를 요청한 페이지를 지칭하는 객체
   //   * response (cf. set): 현재 페이지가 요청에 대한 반응,대답-->
      <% 
   request.setCharacterEncoding("utf-8");
   String userID = request.getParameter("ID");
   String userPW = request.getParameter("PW");
   String userPW2 = request.getParameter("PWCH");
   String userName = request.getParameter("NAME");
   String userNICKName = request.getParameter("N_NAME");
   String userYear = request.getParameter("YEAR");
   String userMonth = request.getParameter("MONTH");
   String userDay = request.getParameter("DAY");
   String userMail = request.getParameter("MAIL");
   String mailAddr = request.getParameter("MAIL_ADDR");
   String userPhone01 = request.getParameter("NUM_SEL");
   String userPhone02 = request.getParameter("SEC_NUM");
   String userPhone03 = request.getParameter("THI_NUM");

   String [] userBirth = request.getParameterValues("ra1");

   String userBunji = request.getParameter("BUN");
   String userAddr = request.getParameter("ADDR");
   String userSec_Addr = request.getParameter("Sec_ADDR");
   String [] userMailAgree = request.getParameterValues("mailagree");
   String userPhoneAgree = request.getParameter("phoneagree");
   String [] userCheck = request.getParameterValues("interested");
   String [] agree01 = request.getParameterValues("agree01");
   String [] agree02 = request.getParameterValues("agree02");
   
  %> 

 <h2>회원정보 입력</h2>
      <table>
      <tr>
        <td>ID</td>
        <td>Password</td>
        <td>Password2</td>
        <td>Name</td>
        <td>NICKNAME</td>
        <td>BIRTH</td>
        <td>YAK</td>
        <td>ADDRESS</td>
        <td>PHONE</td>
        <td>P_AGREE</td>
        <td>Mail</td>
        <td>M_AGREE</td>
        <td>LIKE</td>
        <td>약관동의</td>
        <td>약관동의</td>
      </tr>
      <tr>
        <td><%= userID%></td>
        <td><%= userPW%></td>
        <td><%= userPW2%></td>
        <td><%= userName%></td>
        <td><%= userNICKName%></td>
        <td><%= userYear +"-"+userMonth+"-"+userDay%></td>
        <td><%= userBirth[0]%></td>
        <td><%= "["+userBunji+"]"+userAddr+" " + userSec_Addr%></td>
        <td><%= userPhone01+"-"+userPhone02+"-"+userPhone03%></td>
        <td><%= userPhoneAgree%></td>
        <td><%= userMail+"@"+mailAddr%></td>
        <td><%= userMailAgree[0]%></td>      
        <td><% if(userCheck!= null){
           for(String eachdata : userCheck){
               out.println(eachdata+",");
           }
       }
       %></td>
       <td><%= agree01[0]%></td> 
       <td><%= agree02[0]%></td> 
      </tr>
    </table>

  </body>
</html>
