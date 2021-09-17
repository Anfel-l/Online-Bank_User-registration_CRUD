#Consulta1
SELECT `campania`.`cmp_descripcion` FROM `campania` ORDER BY `campania`.`cmp_descripcion` ASC;

#Consulta2
SELECT `campania`.`cmp_descripcion`, `consumo`.`csm_cuotas`, `consumo`.`csm_tasa_interes`
FROM campania, consumo
ORDER BY consumo.csm_tasa_interes DESC;

#Consulta3
SELECT consumo.csm_asesor, campania.cmp_descripcion
FROM consumo, campania WHERE consumo.csm_asesor = 102 
LIMIT 1;

#Consulta4
SELECT `campania`.`cmp_descripcion`, `usuario`.`usr_alias`
FROM `campania`
    LEFT JOIN `campania_aplicada` ON `campania_aplicada`.`cpa_campania` = `campania`.`cmp_id`
    LEFT JOIN `usuario` ON `campania_aplicada`.`cpa_usuario` = `usuario`.`usr_alias`
WHERE `usuario`.`usr_alias`= 'lucky'
ORDER BY `campania`.`cmp_descripcion` ASC;

#Consulta5
SELECT `usuario`.`usr_alias`, `usuario`.`usr_nombres`, `usuario`.`usr_apellidos`, `campania_aplicada`.`cpa_usuario`
FROM `campania`
    LEFT JOIN `campania_aplicada` ON `campania_aplicada`.`cpa_campania` = `campania`.`cmp_id`
    LEFT JOIN `usuario` ON `campania_aplicada`.`cpa_usuario` = `usuario`.`usr_alias`
ORDER BY `campania`.`cmp_descripcion` ASC;

#Consulta6
SELECT `consumo`.`csm_cuotas`, `campania`.`cmp_descripcion`
FROM `consumo` 
	LEFT JOIN `campania` ON `consumo`.`csm_id` = `campania`.`cmp_id`
WHERE `consumo`.`csm_cuotas` = '60';