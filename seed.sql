
INSERT INTO "public"."odsaddress" ("idaddress","street","housenumber","city","postalcode","addresstype","country","geolat","geolon","recordstatustype","detailshidden") 
VALUES ((SELECT nextval('public.AddressSequence')), 'Coloradoweg','875','Maasvlakte Rotterdam','3199 LA',null,51,51.955005,4.032386,3,false);

INSERT INTO "public"."odsaddress" ("idaddress","street","housenumber","city","postalcode","addresstype","country","geolat","geolon","recordstatustype","detailshidden") 
VALUES ((SELECT nextval('public.AddressSequence')),'Europaweg','50','Rotterdam (RST)','3199 LC',4,51,51.9554455,4.0155852,1,false);

INSERT INTO "public"."odsaddress" ("idaddress","street","housenumber","city","postalcode","addresstype","country","geolat","geolon","recordstatustype","detailshidden") 
VALUES ((SELECT nextval('public.AddressSequence')),'Europaweg','875','Maasvlakte (DELTA)','3199 LD',null,51,51.9546665417907,4.028881684668697,1,false);

INSERT INTO "public"."odsaddress" ("idaddress","street","housenumber","city","postalcode","addresstype","country","geolat","geolon","recordstatustype","detailshidden") 
VALUES ((SELECT nextval('public.AddressSequence')),'Reeweg','50','Rotterdam (RST)','3089 KM',null,53,51.8769851,4.4309073,1,false);

INSERT INTO "public"."odsaddress" ("idaddress","street","housenumber","city","postalcode","addresstype","country","geolat","geolon","recordstatustype","detailshidden") 
VALUES ((SELECT nextval('public.AddressSequence')),'Goodyearstraße',null,'Philippsburg','76661',null,53,49.22783279999999,8.4692819,1,false);

INSERT INTO "public"."odsaddress" ("idaddress","street","housenumber","city","postalcode","addresstype","country","geolat","geolon","recordstatustype","detailshidden") 
VALUES ((SELECT nextval('public.AddressSequence')),'Kohlenstraße','33','Bochum','44795',null,53,51.4640882,7.195517499999998,1,false);


SELECT setval('shippinglocation_id_seq', 1, false);

INSERT INTO "public"."shippinglocation" ("id","name","address","appr_total_avg","appr_total_count","portbasebics","four_shipping_terminal_code","place_id") 
VALUES ((SELECT nextval('public.shippinglocation_id_seq')),'APM I terminals',(Select idaddress from odsaddress where street = 'Coloradoweg' and housenumber = '875'),5.0,1,'0HPDE','0HPDE','ChIJOz0jWSurxUcRqdUw15pwGP8');

INSERT INTO "public"."shippinglocation" ("id","name","address","appr_total_avg","appr_total_count","portbasebics","four_shipping_terminal_code","place_id") 
VALUES ((SELECT nextval('public.shippinglocation_id_seq')),'APM 2 Terminals b.v.',(Select idaddress from odsaddress where street = 'Europaweg' and housenumber = '50'),5.0,1,'0APMA','0APMA','ChIJh4P34SxVxEcRxtX6bI4Mygk');

INSERT INTO "public"."shippinglocation" ("id","name","address","appr_total_avg","appr_total_count","portbasebics","four_shipping_terminal_code","place_id") 
VALUES ((SELECT nextval('public.shippinglocation_id_seq')),'ECT Delta Terminal B.V.',(Select idaddress from odsaddress where street = 'Europaweg' and housenumber = '875'),5.0,1,'00DDE','00DDE','ChIJ6UDAHCqrxUcR04UIZcQCwHU !,! ChIJPXjWGtutxUcRDwVKBrQbs80 !,! ChIJkdgnTimtxUcRN6oSPoxcZXc !,! ChIJrxRoaKusxUcRM_qcje_eDn8 !,! ChIJSRz7aoCtxUcRcnObFBWrCYo !,! ChIJ-fFpLi2rxUcR2bYAISPwmLk !,! ChIJccK4FbCrxUcRFbfhNKX79P4 !,! ChIJhft2zOmrxUcRjsg3WlwXDmA !,! ChIJh4j0FFyrxUcRGWwDZ-IQPRI !,! ChIJD79NcFOrxUcR7NHanzlIz_A !,! ChIJ6_rEAXOrxUcRL-WhH1LBVN8 !,! ChIJaYcO9X-rxUcRo_FVNk-cSBg !,! ChIJKw5u1SyrxUcR1cbOnEUsQ4M');

INSERT INTO "public"."shippinglocation" ("id","name","address","appr_total_avg","appr_total_count","portbasebics","four_shipping_terminal_code","place_id") 
VALUES ((SELECT nextval('public.shippinglocation_id_seq')),'Rotterdam Shortsea Terminals - Noordzijde (RST )',(Select idaddress from odsaddress where street = 'Reeweg' and housenumber = '50'),5.0,1,'0HPDE','0HPDE','ChIJOz0jWSurxUcRqdUw15pwGP8');



-- Shipper organization
INSERT INTO "public"."odsparty" ("idparty","nr","name","currency","generalphone","generalemail","website","vat","cocnumber","coccountry","createddate","address","appr_total_avg","appr_total_count","paymentcondition","iban","bic","invoiceaddress","truckcapacity","partytype","ctransportbonus","sdiscountcode","portbasebics","outofofficephone","ctransportbonusleft","invoicepartyname","invoicesendingenabled","isbulkactionallowed","iswaitingforapproval","removeportbase","invoicegroupedbyreference","ean","isublinvoicingenabled","statusid","uturn_contact","scr_wallet_address","attach_excel_invoice","pc_usage_count","stripe_customerid","organization_setting_id") 
VALUES (1, (SELECT nextval('public.partysequence')),'UTURN Carrier b.v.',1,'0103 106 300','dummy@uturn-now.com','www.uturn-now.com','NL813527661B99','66923333',51,(current_timestamp AT TIME ZONE 'UTC'),null,3.4444444,9,2,'NL82ABNA0484700444','ABNANL2A',null,123,5,0.0000,null,null,null,0,'',null,false,false,true,false,null,false,2,null,null,true,0,null,null);

-- Carrier organization
INSERT INTO "public"."odsparty" ("idparty","nr","name","currency","generalphone","generalemail","website","vat","cocnumber","coccountry","createddate","address","appr_total_avg","appr_total_count","paymentcondition","iban","bic","invoiceaddress","truckcapacity","partytype","ctransportbonus","sdiscountcode","portbasebics","outofofficephone","ctransportbonusleft","invoicepartyname","invoicesendingenabled","isbulkactionallowed","iswaitingforapproval","removeportbase","invoicegroupedbyreference","ean","isublinvoicingenabled","statusid","uturn_contact","scr_wallet_address","attach_excel_invoice","pc_usage_count","stripe_customerid","organization_setting_id") 
VALUES ((Select max(idparty)+1 from odsparty),(SELECT nextval('public.partysequence')),'UTURN Shipper b.v.',1,'0103 106 300','dummy@uturn-now.com','www.uturn-now.com','NL813527661B88','66919999',51,(current_timestamp AT TIME ZONE 'UTC'),null,4.2222223,9,2,'NL82ABNA0484700555','ABNANL2A',null,null,1,0.0000,null,null,'0103106300',0,null,null,false,false,null,false,null,false,4,null,null,true,0,null,null);


-- Shipper Admin user
INSERT INTO "public"."uturnuser" ("idcontact","username","nr","firstname","gender","middlename","surname","phone","email","createdate","party","externalauthid","cargocard","roleid","blocked","abletocompleteshipment","abletoacceptshipment","notification_emails","user_setting_id") 
VALUES ((SELECT nextval('public.ContactSequence')),'admin@shippera.com',1,'Admin',null,null,'ShipperA','+37067108888','admin@shippera.com',(current_timestamp AT TIME ZONE 'UTC'),(Select idparty from odsparty where name = 'UTURN Shipper b.v.'),'c1d0b2db-da81-4085-9a32-d0b9f67b419c',null,10005,false,false,false,'{admin@shippera.com}',null);

-- Carrier Admin user
INSERT INTO "public"."uturnuser" ("idcontact","username","nr","firstname","gender","middlename","surname","phone","email","createdate","party","externalauthid","cargocard","roleid","blocked","abletocompleteshipment","abletoacceptshipment","notification_emails","user_setting_id") 
VALUES ((SELECT nextval('public.ContactSequence')),'admin@carriera.com',(Select max(nr)+1 from uturnuser),'Admin',null,null,'CarrierA','+37067109999','admin@carriera.com',(current_timestamp AT TIME ZONE 'UTC'),(Select idparty from odsparty where name = 'UTURN Carrier b.v.'),'25510a7b-e03b-461a-bb5b-226d1ca5a51c',null,10003,false,true,true,'{admin@carriera.com}',null);


-- Uturn Admin user
INSERT INTO "public"."uturnuser" ("idcontact","username","nr","firstname","gender","middlename","surname","phone","email","createdate","party","externalauthid","cargocard","roleid","blocked","abletocompleteshipment","abletoacceptshipment","notification_emails","user_setting_id") 
VALUES ((SELECT nextval('public.ContactSequence')),'system@uturn-now.com',(Select max(nr)+1 from uturnuser),'Admin',null,null,'Backoffice','+37067102222','system@uturn-now.com',(current_timestamp AT TIME ZONE 'UTC'),null,'db900d29-46c3-40c6-9a14-6ad11766c7a2',null,10000,false,false,false,'{system@uturn-now.com}',null);



-- Encrypted password is 123456

INSERT INTO credential(id, user_uuid, password, system, last_updated) values ((SELECT nextval('public.credential_id_seq')), (Select externalauthid from uturnuser where username = 'admin@shippera.com'), '{bcrypt}$2a$12$I385zyXOsmKplZ/j2vC7LucHqJizGr8eFYxBwF.4u/h2bq6wAEqqK' , false, (current_timestamp AT TIME ZONE 'UTC'));
INSERT INTO credential(id, user_uuid, password, system, last_updated) values ((SELECT nextval('public.credential_id_seq')), (Select externalauthid from uturnuser where username = 'admin@carriera.com'), '{bcrypt}$2a$12$PXKPDiFb3q6BF3YRZmQ5a.6pJ2V14kOoc09CyhWJBXU6I3s8m0f/u' , false, (current_timestamp AT TIME ZONE 'UTC'));
INSERT INTO credential(id, user_uuid, password, system, last_updated) values ((SELECT nextval('public.credential_id_seq')), (Select externalauthid from uturnuser where username = 'system@uturn-now.com'), '{bcrypt}$2a$12$VgKzuhqNw/Cr.TPPToEiV.hQrRpFQn1Qr/RIRhjj64FlBgqXMuufS' , false, (current_timestamp AT TIME ZONE 'UTC'));



--Reset sequence for Uturn property.
SELECT setval('sq__uturn_property_id', 1, false);

INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'authenticationModule','TOKEN_VALID_TIME','240');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'authenticationModule','TOKEN_EXTENSION_THRESHOLD','30');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'general','DEMURRAGE_RATE','47.5');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'ExtraCostService','INITIAL_WARNING_PERIOD','3');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'ExtraCostService','FINAL_WARNING_PERIOD','5');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'CarrierUnfinishedShipments','INITIAL_WARNING_PERIOD','40');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'CarrierUnfinishedShipments','FINAL_WARNING_PERIOD','288');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'general','portalBaseUrl','https://localhost:4200');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'FILE_SERVICE','ALLOWED_FILES_TYPES','pdf,doc,docx,jpeg,jpg,png,tif,tiff,bmp,xls,xlsx,csv,heic');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'FILE_SERVICE','ALLOWED_FILE_SIZE','5');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'MailNotification','HEADER','<!DOCTYPE html>  <html xmlns="http://www.w3.org/1999/xhtml">  <head><base href="{0}"><meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8"/></head>  <body dir="ltr" style="font-family: Verdana; font-size: 11pt; color: #181e35;">');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'MailNotification','FOOTER','<p>Met vriendelijke groet / With kind regards / Mit freundlichen Grüßen,<br><br><span style="color: #00beeb; font-weight: bold;">UTURN </span><span style="color: #00be87; font-weight: bold;">team</span><br><br><img style="height:0.8199cm;width:3.3871cm;" alt="UTURN" src="assets/images/logo_uturn.png"/><br><br><em style="font-size: 10pt;">Manage notification preferences in your user profile.</em><br><br>UTURN b.v.<br>Marconistraat 16<br>3029 AK Rotterdam<br>+31 (0)625 532 282<br><a href="http://www.uturn-now.com/" style="color: #00beeb; text-decoration: underline;">www.uturn-now.com</a><br><span style="color: #878a93; font-size: 7pt;"><br><p style="font-family: Verdana; font-size: 11pt;">Need help?<br><a style="color: #00beeb;" href="mailto:customerservice@uturn-now.com">customerservice@uturn-now.com</a></p><br><br><br>
<span>The information contained in this communication is confidential and is intended solely for the use of the individual or entity to whom it is addressed. You should not copy or distribute this communication without the authority of Uturn. Uturn is neither liable for the proper and complete transmission of the information contained in this communication nor for any delay in its receipt. Uturn does not guarantee that the integrity of this communication has been maintained nor that the communication is free of viruses, interceptions or interference. If you are not the intended recipient of this communication, please return the communication to the sender and delete and destroy all copies. The general terms and conditions of Uturn apply to all legal relationships. These include a liability limitation. These terms and conditions are directly available at</span><a href="http://www.uturn-now.com/" style="color: #00beeb; text-decoration: underline;">www.uturn-now.com</a>.</span></body></html>');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'general','LAST_PROCESSED_EVENT_ID','1491835');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'createShipmentModule','maxAllowedShipmentCreation','999');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'BULK_ACTION','CREATE_PUBLISH','150');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'BULK_ACTION','CANCEL','50');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'BULK_ACTION','UPDATE_PUBLISH','200');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'AVAILABLE_SHIPMENTS','pageSize','50');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'QUOTED_SHIPMENTS','pageSize','500');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'fourShipping','valid_until','2024-03-13 15:00');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'fourShipping','token','eyJraWQiOiJcL2ZhSk5PTFlWVVJYOHBPT0N3RGpaK0pCWGFFcVNMS01HaG80WjBmQ2RyOD0iLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIyOHJuMWg2cTZ2b3JlcmNxZnQxMzNoZGJjcSIsInRva2VuX3VzZSI6ImFjY2VzcyIsInNjb3BlIjoiaW50ZXJtb2RhbC1yb3V0ZXNcL3Bvc3QiLCJhdXRoX3RpbWUiOjE3MTAzMzg0MDAsImlzcyI6Imh0dHBzOlwvXC9jb2duaXRvLWlkcC5ldS1jZW50cmFsLTEuYW1hem9uYXdzLmNvbVwvZXUtY2VudHJhbC0xX3hNclBSMHR3OSIsImV4cCI6MTcxMDM0MjAwMCwiaWF0IjoxNzEwMzM4NDAwLCJ2ZXJzaW9uIjoyLCJqdGkiOiJjY2MwOTFkMy00MmQ2LTQ5MjUtOTk2ZS01ZmIwYjdlODBkNDgiLCJjbGllbnRfaWQiOiIyOHJuMWg2cTZ2b3JlcmNxZnQxMzNoZGJjcSJ9.O54CZU_-9YWqklo1n84L3eU4oeoiEdBeYL3kUIo9KnLIS6hAbUHUbOVWIf5RPN9hcODahJfN4AVVfaKsmzGlkMyONf0VE60asRRfCCVDEP9LnLN8vDmq7UAADsWyZUoP1rOts65y5HJrhYMO0GLmzeDkgdG_QX15IyAyFMsosr-3iEAyGwySMmB6ogY_tTThz1nEaLn5DPOvXaYfL2ziTqnBw8MiZakpPWeRZyH0m6h9smSZcnjF3fwoCO_jan_FcvgyNbb7cdwEliTULdOFPCUYg4q8ge0FCVYO08cHF5tWJkgx0m_6-tsvt5oRMb4lS4VboiXH3YnvB11kEISLBA');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'priceCalculatorService','feedbackCounter','50');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'general','amountOfDaysPerUniqueContainerAndUser','3');
INSERT INTO "public"."uturn_property" ("id","propertyuser","propertyname","propertyvalue") VALUES ((SELECT nextval('public.sq__uturn_property_id')),'priceCalculatorService','PC_USAGE_FREE_LIMIT','25');



-- Shipment groups from admin@shippera.com user
INSERT INTO "public"."shipment_group" ("id","name","shipper_id") VALUES ((SELECT nextval('public.shipment_group_id_seq')),'RTM283131',2);
INSERT INTO "public"."shipment_group" ("id","name","shipper_id") VALUES ((SELECT nextval('public.shipment_group_id_seq')),'RTM2831555',2);


-- Shipments

SELECT setval('ShipmentNumberSequence', 70000, false);

INSERT INTO "public"."odsshipment" ("idshipment","nr","details","grossweight","publishfrom","publishto","shipmentprice","shipmentstatus","party","transportserviceorder","uncode","distancemeters","sshipperreference","shippingline","seal","requestingcontact","condition","hoursindication","bottompriceindication","toppriceindication","bfixedprice","dutiespaid","generatorset","cargodescription","currencyid","cocfieldshashcode","mdstransporttypeid","release","batch_id","created_on","updated_on","version","group_id") VALUES 
((SELECT nextval('public.ShipmentSequence')),(SELECT nextval('public.ShipmentNumberSequence')),'Requires special truck',15000,(current_timestamp AT TIME ZONE 'UTC'), (current_timestamp AT TIME ZONE 'UTC' + INTERVAL '1 day'),25.0000,(Select idshipmentstatustype from mdsShipmentStatusType where code = 'CON'),(Select idparty from odsparty where name = 'UTURN Shipper b.v.'),null,null,2340,'EMTY2400081',48,null,(Select idcontact from uturnuser where username = 'admin@shippera.com'),'AVC',1.5359892,48.0,91.0,true,false,false,null,1,109624896,null,null,'9ae2d4ef-ffc5-42b8-9e2a-644c35d81a14',(current_timestamp AT TIME ZONE 'UTC'), (current_timestamp AT TIME ZONE 'UTC'),5,1);

INSERT INTO "public"."odsshipment" ("idshipment","nr","details","grossweight","publishfrom","publishto","shipmentprice","shipmentstatus","party","transportserviceorder","uncode","distancemeters","sshipperreference","shippingline","seal","requestingcontact","condition","hoursindication","bottompriceindication","toppriceindication","bfixedprice","dutiespaid","generatorset","cargodescription","currencyid","cocfieldshashcode","mdstransporttypeid","release","batch_id","created_on","updated_on","version","group_id") VALUES 
((SELECT nextval('public.ShipmentSequence')),(SELECT nextval('public.ShipmentNumberSequence')),'Requires special truck also',25000,(current_timestamp AT TIME ZONE 'UTC' ), (current_timestamp AT TIME ZONE 'UTC' + INTERVAL '1 day'),1500,(Select idshipmentstatustype from mdsShipmentStatusType where code = 'CON'),(Select idparty from odsparty where name = 'UTURN Shipper b.v.'),null,null,2340,'EMTY2400081',48,null,(Select idcontact from uturnuser where username = 'admin@shippera.com'),'AVC',1.5359892,48.0,91.0,true,false,false,null,1,109624896,null,null,'9ae2d4ef-ffc5-42b8-9e2a-644c35d81a14',(current_timestamp AT TIME ZONE 'UTC'), (current_timestamp AT TIME ZONE 'UTC'),5,2);


SELECT setval('sq__shipmentlocationaction_id', 1, false);
INSERT INTO "public"."shipmentlocationaction" ("id","shipmentid","actiontypeid","sequencenumber","datefrom","dateuntil","reference","remarks","eta","arrival","departure","rating","shippingline","vesselname","port","location","customer_name") VALUES ((SELECT nextval('public.sq__shipmentlocationaction_id')),(Select idshipment from odsshipment where nr = 1),3,1,(current_timestamp AT TIME ZONE 'UTC'), (current_timestamp AT TIME ZONE 'UTC' + INTERVAL '1 day'),null,null,null,null,null,null,null,null,null,(Select id from shippinglocation where name = 'APM I terminals'),null);

INSERT INTO "public"."shipmentlocationaction" ("id","shipmentid","actiontypeid","sequencenumber","datefrom","dateuntil","reference","remarks","eta","arrival","departure","rating","shippingline","vesselname","port","location","customer_name") VALUES ((SELECT nextval('public.sq__shipmentlocationaction_id')),(Select idshipment from odsshipment where nr = 1),4,2,(current_timestamp AT TIME ZONE 'UTC'), (current_timestamp AT TIME ZONE 'UTC' + INTERVAL '1 day'),null,null,null,null,null,null,null,null,null,(Select id from shippinglocation where name = 'Rotterdam Shortsea Terminals - Noordzijde (RST )'),null);


INSERT INTO "public"."shipmentlocationaction" ("id","shipmentid","actiontypeid","sequencenumber","datefrom","dateuntil","reference","remarks","eta","arrival","departure","rating","shippingline","vesselname","port","location","customer_name") VALUES ((SELECT nextval('public.sq__shipmentlocationaction_id')),(Select idshipment from odsshipment where nr = 2),3,1,(current_timestamp AT TIME ZONE 'UTC'), (current_timestamp AT TIME ZONE 'UTC' + INTERVAL '1 day'),null,null,null,null,null,null,null,null,null,(Select id from shippinglocation where name = 'APM 2 Terminals b.v.'),null);

INSERT INTO "public"."shipmentlocationaction" ("id","shipmentid","actiontypeid","sequencenumber","datefrom","dateuntil","reference","remarks","eta","arrival","departure","rating","shippingline","vesselname","port","location","customer_name") VALUES ((SELECT nextval('public.sq__shipmentlocationaction_id')),(Select idshipment from odsshipment where nr = 2),4,2,(current_timestamp AT TIME ZONE 'UTC'), (current_timestamp AT TIME ZONE 'UTC' + INTERVAL '1 day'),null,null,null,null,null,null,null,null,null,(Select id from shippinglocation where name = 'ECT Delta Terminal B.V.'),null);

