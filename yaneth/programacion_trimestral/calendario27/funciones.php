<?php

/**
**
**  BY iCODEART
**
**********************************************************************
**                      REDES SOCIALES                            ****
**********************************************************************
**                                                                ****
** FACEBOOK: https://www.facebook.com/icodeart                    ****
** TWIITER: https://twitter.com/icodeart                          ****
** YOUTUBE: https://www.youtube.com/c/icodeartdeveloper           ****
** GITHUB: https://github.com/icodeart                            ****
** TELEGRAM: https://telegram.me/icodeart                         ****
** EMAIL: info@icodeart.com                                       ****
**                                                                ****
**********************************************************************
**********************************************************************
**/

// Evaluar los datos que ingresa el usuario y eliminamos caracteres no deseados.
function evaluar($valor) 
{
	$nopermitido = array("'",'\\','<','>',"\"");
	$valor = str_replace($nopermitido, "", $valor);
	return $valor;
}

// Formatear una fecha a microtime para añadir al evento, tipo 1401517498985.
function _formatear($fecha)
{
	return strtotime(substr($fecha, 0, 4)."-".substr($fecha, 5, 2)."-".substr($fecha, 8, 2)." " .substr($fecha, 10, 6)) * 1000;
}
 ?>
