@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZZCICIT_LIB_22AD303303'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZZCIR_CIT_LIB_22AD303303
  as select from ZCIT_LIB_22AD303
{
  key book_id as BookID,
  category as Category,
  title as Title,
  language as Language,
  book_condition as BookCondition,
  member_type as MemberType,
  status as Status,
  author as Author,
  publisher as Publisher,
  publication_year as PublicationYear,
  isbn as Isbn,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_CurrencyStdVH', 
    entity.element: 'Currency', 
    useForValidation: true
  } ]
  currency as Currency,
  @Semantics.amount.currencyCode: 'Currency'
  price as Price,
  @Semantics.user.createdBy: true
  createdby as Createdby,
  @Semantics.systemDateTime.createdAt: true
  createdat as Createdat,
  @Semantics.user.lastChangedBy: true
  lastchangedby as Lastchangedby,
  @Semantics.systemDateTime.lastChangedAt: true
  lastchangedat as Lastchangedat,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  locallastchangedat as Locallastchangedat
}
