#Primer update
UPDATE `consumo` SET `csm_cuotas` = '60' WHERE `consumo`.`csm_id` = 2 ;

#Segudo update
UPDATE `usuario` SET `usr_celular` = '3115678432' WHERE `usuario`.`usr_alias` = 'ninja' ;

#Tecer update
DELETE FROM `campania_aplicada` WHERE `campania_aplicada`.`cpa_app_id` = 7