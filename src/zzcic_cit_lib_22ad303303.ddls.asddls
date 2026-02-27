@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZZCICIT_LIB_22AD303303'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZCIC_CIT_LIB_22AD303303
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZCIR_CIT_LIB_22AD303303
  association [1..1] to ZZCIR_CIT_LIB_22AD303303 as _BaseEntity on $projection.BOOKID = _BaseEntity.BOOKID
{
  key BookID,
  Category,
  Title,
  Language,
  BookCondition,
  MemberType,
  Status,
  Author,
  Publisher,
  PublicationYear,
  Isbn,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  Currency,
  @Semantics: {
    Amount.Currencycode: 'Currency'
  }
  Price,
  @Semantics: {
    User.Createdby: true
  }
  Createdby,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  Createdat,
  @Semantics: {
    User.Lastchangedby: true
  }
  Lastchangedby,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  Lastchangedat,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  Locallastchangedat,
  _BaseEntity
}
