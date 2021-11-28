<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">



<HTML>
<HEAD>




<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
<meta name="GENERATOR" content="IBM Software Development Platform"/>
<meta content="no-cache" http-equiv="pragma"/>
<meta content="no-cache" http-equiv="cache-control"/>
<script>
var __uzdbm_1 = "f5dd24d4-e521-724c-3e16-f5baa189d14e";var __uzdbm_2 ="NTRjZTM4MzctYm9kNy04OTgxLTg5NDQtYjg2ZDljOWI0YzEzJDg2LjEyNy4yMjkuMTA4";

  (function(w, d, e, u, c, g, a, b){
    w["SSJSConnectorObj"] = w["SSJSConnectorObj"] || {ss_cid : c, domain_info: "auto"};
    w[g] = function(i, j){w["SSJSConnectorObj"][i] = j};
    a = d.createElement(e);
    a.async = true;
    a.src = u;
    b = d.getElementsByTagName(e)[0];
    b.parentNode.insertBefore(a, b);
    
  })(window,document,"script","https://cdn.perfdrive.com/aperture/aperture.js","bodh","ssConf");
    
    ssConf("c1" , "https://cas.avalon.perfdrive.com");
</script><script type="text/javascript" language="javascript" src="/BNWeb/js/control.js"></script>
<script type="text/javascript" language="javascript" src="/BNWeb/js/util.js"></script>
<link rel="stylesheet" type="text/css" href="/BNWeb/css/resetearcss.css" />
<link rel="stylesheet" type="text/css" href="/BNWeb/css/tipografias.css" />
<link rel="stylesheet" type="text/css" href="/BNWeb/css/bienvenido.css" />
<link rel="stylesheet" type="text/css" href="/BNWeb/css/select.css" />
<link rel="stylesheet" type="text/css" href="/BNWeb/css/bn-estilos.css" />    
<script type="text/javascript" src="/BNWeb/js/bn-jquery.js"></script>
<script type="text/javascript" src="/BNWeb/js/jquery.ui.js"></script>
<script type="text/javascript" src="/BNWeb/js/select.js"></script>
<script language="javascript" type="text/javascript">
function consultarAdic(obj, valor, moneda){
	var form = document.frmConsulta;
	if (validacampo('txtNumeroCuenta')){
		alert('Es necesario que ingrese el número de cuenta' ); 
		return;
	}
	// Validando que el Número de Cuenta no tenga caracteres que no sean números
	if (validarSiNumero(frmConsulta.txtNumeroCuenta.value)){
		alert('El número de cuenta solo acepta números...');
		return;
	}

	// Completando el Número de Cuenta a 11 digitos
	if (frmConsulta.txtNumeroCuenta.value.length < 11){
		var tmp_cta=frmConsulta.txtNumeroCuenta.value;
		while (tmp_cta.length < 11){
			tmp_cta = '0'+tmp_cta;
		}
		frmConsulta.txtNumeroCuenta.value = tmp_cta;
		valor = tmp_cta;

	}
	return consultar(obj, valor, moneda);
}

function consultar(obj, valor, moneda){
	var form = document.frmConsulta;
	form.hidCuenta.value 	= valor;
	form.hidMoneda.value    = moneda;

	form.action = "/BNWeb/consultaCtaCte.do";
	form.hidConsulta.value = obj.value;
	
    if (form.hidConsulta.value == "19")
	{	
		form.metodo.value = 'consultaestado';
	} else if (form.hidConsulta.value == "06") {
        form.metodo.value = 'consultarCtaCte';
		form.HrTrx.value="0124";
		//alert("consultarCtaCte")
	}
	else
	{
		if(moneda=="PEI"){// Moneda Nacional
			if(obj.value=="01"){// Consulta de Saldo - Ahorros
				form.HrTrx.value="1100";
			}
			if(obj.value=="02"){// Consulta de Movimientos - Ahorros
				form.HrTrx.value="1923";
			}
			if(obj.value=="03"){// Consulta de CCI - Ahorros
				form.HrTrx.value="1125";
			}
			if(obj.value=="04"){// Consulta de ITF Anual - Ahorros
				form.HrTrx.value="9001";  // DEFINIDO POR COSAPI
			}
			if(obj.value=="05"){// Consulta de Saldo - Corriente
				form.HrTrx.value="0100";
			}
			if(obj.value=="06"){// Consulta de Movimientos - Corriente
				form.HrTrx.value="0124";
			}
			if(obj.value=="07"){// Consulta de CCI - Corriente
				form.HrTrx.value="0125";
			}
			if(obj.value=="08"){// Consulta de ITF Anual - Corriente
				form.HrTrx.value="9002"; // DEFINIDO POR COSAPI
			}
			if(obj.value=="19"){// Consulta de Estado de Cuenta - Corriente
				form.HrTrx.value="9101"; // DEFINIDO POR COSAPI
			}
			if(obj.value=="09"){// Consulta de Saldo - Préstamos
				form.HrTrx.value="3035";
			}
			if(obj.value=="12"){// Consulta de Saldos - CTS
				form.HrTrx.value="2510"; 
			}
			if(obj.value=="13"){// Consulta de Movimientos - CTS
				form.HrTrx.value="2523";
			}
		}
		if(moneda=="USD"){
			if(obj.value=="01"){// Consulta de Saldo - Ahorros
				form.HrTrx.value="8100";
			}
			if(obj.value=="02"){// Consulta de Movimientos - Ahorros
				form.HrTrx.value="8923";
			}
			if(obj.value=="03"){// Consulta de CCI - Ahorros
				form.HrTrx.value="8125";
			}
			if(obj.value=="04"){// Consulta de ITF Anual - Ahorros
				form.HrTrx.value="9011"; // DEFINIDO POR COSAPI
			}
			if(obj.value=="05"){// Consulta de Saldo - Corriente
				form.HrTrx.value="6100";
			}
			if(obj.value=="06"){// Consulta de Movimientos - Corriente
				form.HrTrx.value="6124";
			}
			if(obj.value=="07"){// Consulta de CCI - Corriente
				form.HrTrx.value="6125";
			}
			if(obj.value=="08"){// Consulta de ITF Anual - Corriente
				form.HrTrx.value="9012"; // DEFINIDO POR COSAPI
			}
			if(obj.value=="19"){// Consulta de Estado de Cuenta - Corriente
				form.HrTrx.value="9111"; // DEFINIDO POR COSAPI
			}
			if(obj.value=="99"){// Consulta de Saldo - Préstamos
				form.HrTrx.value="0000"; // No existe cuenta préstamos en dólares
			}
			if(obj.value=="12"){// Consulta de Saldos - CTS
				form.HrTrx.value="2610"; 
			}
			if(obj.value=="13"){// Consulta de Movimientos - CTS
				form.HrTrx.value="2623";
			}
		}
		//alert("Consultae")
		form.metodo.value = 'consultar';
	}
		deshabilitaSelects('cbOpciones');
	form.submit();
}
	function validarSiNumero(numero){
		var textoStr =  numero.toString() // transformo a string todo el campo
		var tiene = 0
		for(var i = 0;i < numero.length;i++){ // recorro caracter potr caracter
			var oneChar = textoStr.charAt(i)
			if (!/^([0-9])*$/.test(oneChar)){ // busco un caracter que no sea Numerico
				tiene = 1
			}
		}
		if (tiene == 1){ // controlo si existe o no caracter que no sea numerico.
			return true
		} else {
			return false
		}
	}

</SCRIPT>
</HEAD>

<body oncontextmenu="return false" onselectstart="return false" ondragstart="return false"  onKeyDown="return cancelRefresh(event)"  bgcolor="white">
<FORM name="frmConsulta" method="POST">
<INPUT type="hidden" name="metodo">
<INPUT type="hidden" name="hidCuenta">
<input type="hidden" name="transaccion">
<INPUT type="hidden" name="hidConsulta">
<INPUT type="hidden" name="hidMoneda">
<INPUT type="hidden" name="HrTrx">

<div id="contenidos-informativos">
			<h2>CONSULTA DE CUENTAS</h2>
			<div id="cuentas">
				<table width="100%" border="0" align="center">
				<tbody>
	
				<tr align="left" valign="top">
				
					<td width="100%">
						<center>
						<table class="table-cuentas" width="100%" border="0" cellpadding="0" cellspacing="1">
						<tbody>
							<tr>
							<td colspan="4" align="center" class="texto" height="20"><p align="justify">A través de Multired Virtual, Usted podrá realizar operaciones con cargo a su cuenta de ahorros y CTS (Tarjeta Multired Global Débito), afiliaciones a Débito automático o realizar consultas como cliente de cuenta de ahorros, cuenta corriente, CTS, préstamos Multired o Débito automático, accediendo desde la comodidad de su hogar, empresa o cualquier lugar con acceso a Internet.</p></td>
							</tr>
							<tr>
								<td colspan="2" width="50%" align="center" class="detalleCelda">Nro. de Cuenta</td>
								<td width="30%" align="center" class="detalleCelda"><strong><input type="text" class="input-chico" name="txtNumeroCuenta" size="11" maxlength="11" onkeypress="return soloNumerosAll(event)"/> </strong></td>
								<td width="40%" class="detalleCelda"><strong>
						
						   <select title="Tipo de Consulta" name="cbOpciones" id="cbOpciones" class="select select-chico2" onchange="consultarAdic(this,document.frmConsulta.txtNumeroCuenta.value,'USD')">
								<OPTION selected>Seleccione....&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</OPTION>
								<OPTION value="05">Saldos</OPTION>
								<OPTION value="06">Movimientos</OPTION>
								<OPTION value="07">CCI</OPTION>
								<OPTION value="08">ITF Anual</OPTION>
								<OPTION value="19">Estado de Cuenta</OPTION>
							</select>
						 
						    
						    </strong></td>
						    <td>&nbsp;&nbsp;&nbsp;</td>
						</tr>
						
		
						
						
						
						
						
						
						
						
						
						
						
						<!-- ------------------------------------------------------- -->
						
						
						
						
						
						<tr>
							<td colspan="4" align="center" class="tituloTabla">CUENTAS CORRIENTES DETRACCIONES</td>
						</tr>	
						<tr>
							<td colspan="1" width="30%" align="center" class="tituloCelda"><strong>Cuenta</strong></td>
							<td width="30%" align="center" class="tituloCelda"><strong>Moneda</strong></td>
							<td width="15%" align="center" class="tituloCelda"><strong>Saldo</strong></td>
							<td width="25%" align="center" class="tituloCelda"><strong>Tipo de Consulta</strong></td>
													
						</tr>
						
						<tr>
							<td colspan="1" class="detalleCelda">&nbsp;00-022-014218</td>
							<td class="detalleCelda">&nbsp;Soles</td>
							<td align="right" class="detalleCelda">&nbsp;0.20&nbsp;&nbsp;</td>
							<td class="detalleCelda">
							
							<select title="Tipo de Consulta" name="cbOpciones" id="cbOpciones" class="select select-chico2" onchange="consultar(this,'00022014218','PEI')">
										<OPTION selected>Seleccione....&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</OPTION>
										<OPTION value="05">Saldos</OPTION>
										
											<OPTION value="06">Movimientos</OPTION>
											<OPTION value="19">Estado de Cuenta</OPTION>
										
							</select>
											
							
							
							
							
							</td>
						</tr>
						
						
						
						
						<tr>
							<td colspan="1" class="detalleCelda">&nbsp;00-031-158931</td>
							<td class="detalleCelda">&nbsp;Soles</td>
							<td align="right" class="detalleCelda">&nbsp;1,160.00&nbsp;&nbsp;</td>
							<td class="detalleCelda">
							
							<select title="Tipo de Consulta" name="cbOpciones" id="cbOpciones" class="select select-chico2" onchange="consultar(this,'00031158931','PEI')">
										<OPTION selected>Seleccione....&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</OPTION>
										<OPTION value="05">Saldos</OPTION>
										
											<OPTION value="06">Movimientos</OPTION>
											<OPTION value="19">Estado de Cuenta</OPTION>
										
							</select>
											
							
							
							
							
							</td>
						</tr>
						
						
						
						<tr>
							<td width="30%"><br/></td>
							<td width="30%"></td>
							<td width="15%" align="right"></td>
							<td width="25%"><br/></td>
						</tr>
						
						<!-- -------------------- -->
						
						
						
	
						
						
						
						
						
					<!-- -------------------- -->	
						
							
		
						
						
						
						
							
							<tr>
							<td colspan="5"><hr/></td>
						</tr>
						<tr>
							<td colspan="5" align="center" class="texto" height="26"><p align=justify>Estimado cliente, el horario de las transacciones se encuentra ubicado en la
parte inferior de las pantallas, de acuerdo a la selección de la opción que Usted realice.</p>
<p align=justify>Si Usted tiene un Préstamo Multired Reconstrucción o Reprogramado por el sismo del 15.08.2007, agradeceremos acercarse a nuestras oficinas para mayor información.</p></td>
						</tr>
						</tbody>
						</table>
							
						</center>
					<br/>
					</td>	
				</tr>
				</tbody>
				</table>
			</div>
		</div>
	<script type="text/javascript" src="/BNWeb/js/bn-funciones.js"></script>
				<script type="text/javascript">
				    $(document).ready(function(){
				    	myApp.select.init();
				    });
				    
				    
				</script>
				
				<script>
				$(document).ready(function(){
					var fr = parent.document.getElementById("CuerpoIframe");//$("#Cuerpo");
					var h = document.body.scrollHeight+20;
					fr.height = h+"px";
					fr.style.height = h+"px";
				});
				</script>
	</form>
</body>
</html>
