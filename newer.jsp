
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link rel="stylesheet" href="css/jquery.mobile-1.4.1.css" type="text/css" />
<script src="formjs.js" type="text/javascript"></script>
    <link rel="stylesheet" href="formcss.css" type="text/css" />
<script src="js/jquery-1.9.1.js" type="text/javascript"></script>
<script src="js/jquery.mobile-1.4.1.js" type="text/javascript"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
<script type="text/javascript">
function Calculate()
{

//if(check==true) 
//{ 
  document.getElementById('tab4').className='on1';
  document.getElementById('tab1').className='off1';
  document.getElementById('tab2').className='off1';
  /*document.getElementById('tab3').className='off1'; */
			
//} 
        	
if(document.getElementById('hide2').style.display=='block') 
{	
document.getElementById('hide2').style.display='none';
}    	
if(document.getElementById('benefits').style.display=='none') 
{	
document.getElementById('benefits').style.display='block';
}

var Age = document.getElementById("Age").value;
var RAge = document.getElementById("RAge").value;
var PV = document.getElementById("PV").value;
var Expense = document.getElementById("Expense").value;
//var Maturity = document.getElementById("Maturity").value;
var LAge = document.getElementById("LAge").value;
var inflation = document.getElementById("inflation").value; 
var pri = document.getElementById("pri").value; 
var roi = document.getElementById("roi").value;   
var expected = document.getElementById("expected").value;   
    
    
    
var Yearsleft;
Yearsleft =Number(RAge-Age);
var Yearsafter;
Yearsafter =Number(LAge-RAge);
var Power = Math.pow((1+(inflation/100)),Yearsleft);
 
    
var AExpenses;
AExpenses = Number(Expense*12);
var FVExpenses;
FVExpenses = Number(AExpenses*Power);
var ror = Number(((1+pri/100)/(1+inflation/100))-1);    

var power1 = Math.pow(1+(ror),(-Yearsafter));
var power2 = Number(1-power1);

var RHS1 = Number(FVExpenses/ror);
var RHS2 = Number(RHS1*power2);
var RHS = Number(RHS2*(1+ror));    


var FV1 = Math.pow((1+(roi/100)),Yearsleft);
var FV2 = Number(PV*FV1);   
var FV =  Math.round(FV2); 
    
var remaining1 = Number(RHS-FV2);    
var remaining = Number(RHS-FV);    
    
    
   
    
    
    
var corpus;
corpus = Math.round(RHS);  
    
    
var temp1 = Number(1+expected/100);
var temp2 = Math.pow(temp1,1/12);

var temp3 = Number(temp2-1);
    
var temp4 = Number(1+temp3);    

var powerr = Math.pow(temp4,Yearsleft*12); 
    
var MonthlySIP1 = Number((remaining1*temp3)/(powerr-1)); 
var MonthlySIP2 = Number(MonthlySIP1/(1+temp3));    
var MonthlySIP = Math.round(MonthlySIP2);    
    
    
//var MonthlySIP;
//MonthlySIP = Math.round([(shortfall*(0.0075))/(Powerr-1)]*1.0075);


document.getElementById('Age_display').innerHTML=Number(Age);
document.getElementById('RAge_display').innerHTML=RAge;
document.getElementById('life_expetancy_display').innerHTML=LAge;
document.getElementById('Expenses_display').innerHTML=Expense.replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
document.getElementById('Provision_display').innerHTML=FV;

document.getElementById('corpus_display').innerHTML=corpus;
document.getElementById('MonthlySIP_display').innerHTML=MonthlySIP;
drawChart(remaining,FV) 


var price = document.getElementById("Provision_display").innerHTML;
  $("#Provision_display").html(Number(price).toLocaleString('en-IN')); 

var price = document.getElementById("corpus_display").innerHTML;
  $("#corpus_display").html(Number(price).toLocaleString('en-IN')); 

var price = document.getElementById("MonthlySIP_display").innerHTML;
  $("#MonthlySIP_display").html(Number(price).toLocaleString('en-IN'));



}
    

    

google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart(remaining,FV) 
	  {
	
		
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Shortfall',     parseInt(remaining)],
          ['Provision Made',      parseInt(FV)],
        
        ]);
		
		

        var options = {
          title: 'Retirement Planning'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));
        chart.draw(data, options);
      }




function Nextpage() 
{
 if(document.getElementById('hide2').style.display=='none') { 
            document.getElementById('hide2').style.display='block'; 
			/*document.getElementById('tab3').className='off1';*/
			document.getElementById('tab1').className='off1';
			document.getElementById('tab2').className='on1';
			document.getElementById('tab4').className='off1';
			
        } 
        	
if(document.getElementById('hide').style.display=='block') {	
	
document.getElementById('hide').style.display='none';

}

}

function Nextpage2() 
{
 if(document.getElementById('benefits').style.display=='none') { 
            document.getElementById('benefits').style.display='block'; 
			document.getElementById('tab4').className='on1';
			document.getElementById('tab1').className='off1';
			document.getElementById('tab2').className='off1';
			/*document.getElementById('tab3').className='off1';*/
			
        } 
        	
if(document.getElementById('hide2').style.display=='block') {	
	
document.getElementById('hide2').style.display='none';

}

}

/*function Nextpage2() 
{
 if(document.getElementById('hide3').style.display=='none') { 
            document.getElementById('hide3').style.display='block'; 
			document.getElementById('tab3').className='on1';
			document.getElementById('tab1').className='off1';
			document.getElementById('tab2').className='off1';
			document.getElementById('tab4').className='off1';
			
        } 
        	
if(document.getElementById('hide2').style.display=='block') {	
	
document.getElementById('hide2').style.display='none';

}

}*/


function backpage() 
{
 if(document.getElementById('hide').style.display=='none') { 
            document.getElementById('hide').style.display='block'; 
			/*document.getElementById('tab3').className='off1';*/
			document.getElementById('tab1').className='on1';
			document.getElementById('tab2').className='off1';
			document.getElementById('tab4').className='off1';
			
        } 
        	
if(document.getElementById('hide2').style.display=='block') {	
	
document.getElementById('hide2').style.display='none';

}

}

function backpage2() 
{
 if(document.getElementById('hide2').style.display=='none') { 
            document.getElementById('hide2').style.display='block';
			/*document.getElementById('tab3').className='off1';*/
			document.getElementById('tab1').className='off1';
			document.getElementById('tab2').className='on1'; 
			document.getElementById('tab4').className='off1';
			
        } 
        	
if(document.getElementById('benefits').style.display=='block') {	
	
document.getElementById('benefits').style.display='none';

}

}


function backpage33() 
{

 if(document.getElementById('hide2').style.display=='none') { 
            document.getElementById('hide2').style.display='block';
			document.getElementById('tab2').className='on1';
			document.getElementById('tab1').className='off1';
			/*document.getElementById('tab3').className='on1'; */
			document.getElementById('tab4').className='off1';
			document.getElementById('benefits').style.display='none';

        } 
        	
if(document.getElementById('benefits').style.display=='block') {	
	
document.getElementById('benefits').style.display='none';

}

}
	


</script>

</head>

<body>

<div class="header">
<div class="on1" id="tab1">Step 1</div>
<div class="off1" id="tab2">Step 2</div>
<!--<div class="off1" id="tab3">Step 3</div>-->
<div class="off1" id="tab4">Solutions</div>
</div>
<div id="hide" class="col-md-9 col-xs-12" style="display:block;">

<label for="slider-fill">What is your current Age ?</label>
<input type="range" name="slider-fill" id="Age" value="25" min="18" max="100" step="1" data-highlight="true">
<label for="slider-fill">At what age do you wish to retire ?</label>
<input type="range" name="slider-fill" id="RAge" value="55" min="50" max="70" step="1" data-highlight="true">

    
<label for="slider-fill">life expectancy age</label>
<input type="range" name="slider-fill" id="LAge" value="80" min="50" max="100" step="1" data-highlight="true">
    

<label for="slider-fill">Inflation Rate</label>
<input type="range" name="slider-fill" id="inflation" value="7" min="0" max="20" step="1" data-highlight="true">  
    
<label for="slider-fill">Post retirement interest rate</label>
<input type="range" name="slider-fill" id="pri" value="9" min="0" max="60" step="1" data-highlight="true">    
    
<div class="button" onclick="Nextpage()">Next</div>

<div class="clearfix"></div>
</div>

<div id="hide2" class="col-md-9 col-xs-12" style="display:none;">
<label for="slider-fill">If you were to retire today, approximately how much amount do you think you would require monthly to live comfortably ?</label>
<input type="range" name="slider-fill" id="Expense" value="0" min="15000" max="500000" step="1000" data-highlight="true">
<!--
<label for="slider-fill">What benefits, including Provident Fund, will you receive when you retire ?</label>
<input type="range" name="slider-fill" id="Maturity" value="0" min="0" max="10000000" step="100000" data-highlight="true">
-->
<label for="slider-fill">How much money have you already saved for retirement ?</label>
<input type="range" name="slider-fill" id="PV" value="0" min="0" max="10000000" step="100000" data-highlight="true">
<!-- <div class="button" onclick="backpage()">Back</div> -->
<!--<div class="button" onclick="Nextpage2()">Next</div>-->
    
 
<label for="slider-fill">Return on existing investments</label>
<input type="range" name="slider-fill" id="roi" value="0" min="0" max="30" step="1" data-highlight="true">
    

<label for="slider-fill">Expected return on new investment</label>
<input type="range" name="slider-fill" id="expected" value="0" min="0" max="30" step="1" data-highlight="true">
    

    
    

 <input type='submit' value='Calculate' class='form_button' onclick="Calculate()">
				<span id='phpfmg_processing' style='display:none;'>
                    <img id='phpfmg_processing_gif' src='admin.php?mod=image&amp;func=processing' border=0 alt='Processing...'> <label id='phpfmg_processing_dots'></label>
  </span>

</div>

<!--<div id="hide3" style="display:none;">

<form name="frmFormMail" id="frmFormMail" target="submitToFrame" action='admin.php' method='post' enctype='multipart/form-data' onsubmit='return fmgHandler.onSubmit(this);'>
<table width="300">
<input type='hidden' name='formmail_submit' value='Y'>
<input type='hidden' name='mod' value='ajax'>
<input type='hidden' name='func' value='submit'>
            
            

<tr><td>
<div class='col_label'>
<label class='form_field'>Name:</label> <label class='form_required' >*</label> </div>
</td>
<td width="448">
	<div class='col_field'>
	<input type="text" name="field_0"  id="field_0" value="" class='text_box'>
	<div id='field_0_tip' class='instruction'></div>
	</div></td>
    </tr>



<tr><td>
<div class='col_label'>
<label class='form_field'>Email</label> <label class='form_required' >*</label> </div></td>

<td>	<div class='col_field'>
	<input type="text" name="field_1"  id="field_1" value="" class='text_box'>
	<div id='field_1_tip' class='instruction'></div>
	</div></td></tr>
<tr><td><div class='col_label'>
	<label class='form_field'>Mobile No</label> <label class='form_required' >*</label> </div></td>
<td><div class='col_field'>
	<input type="text" name="field_2"  id="field_2" value="" class='text_box'>
	<div id='field_2_tip' class='instruction'></div>
	</div></td></tr>
            <div class='col_label'>&nbsp;</div>
            <div class='form_submit_block col_field'>
	<tr>
    <td><div class="button" onclick="backpage2()">Back</div></td>
				<td width="150">
                <input type='submit' value='Submit' height="30" class='button'>
</td></tr>
				<div id='err_required' class="form_error" style='display:none;'>
				    <label class='form_error_title'>Please check the required fields</label>
				</div>
				
</table>

                <span id='phpfmg_processing' style='display:none;'>
                    <img id='phpfmg_processing_gif' src='admin.php?mod=image&amp;func=processing' border=0 alt='Processing...'> <label id='phpfmg_processing_dots'></label>
  </span>
         

</form>

<iframe name="submitToFrame" id="submitToFrame" src="javascript:false" style="position:absolute;top:-10000px;left:-10000px;" /></iframe>

</div>-->
<div id="benefits" class="col-md-9 col-xs-12" style="display:none;">
<div class="col-md-5 col-xs-12">
Your Current Age is : <span id="Age_display"></span> Years
<hr color="#C1C1C1" />
Your Retirement Age is : <span id="RAge_display"></span> Years
    
    
<hr color="#C1C1C1" />
life expectancy age : <span id="life_expetancy_display"></span> Years    

<hr color="#C1C1C1" />
Monthly Expenses is : Rs.<span id="Expenses_display"></span>
    
    
<hr color="#C1C1C1" />
Retirement Corpus : Rs.<span id="corpus_display" style="color:#030; font-size:20px; font-weight:bold;"></span>
       
    
<hr color="#C1C1C1" />
Provision Made : Rs.<span id="Provision_display"></span>
    
 
<hr color="#C1C1C1" />
Monthly Savings : Rs.<span id="MonthlySIP_display" style="color:#030; font-size:20px; font-weight:bold;"></span>

<!-- <div class="button" onclick="backpage33()">Back</div> -->
    
<div class="clearfix"></div> 
    
<div id="piechart" class="piechart"></div>    
    
</div>
<div class="col-md-7 col-xs-12">
</div>
    
<div class="clearfix"></div>
</div>




</body>
</html>
