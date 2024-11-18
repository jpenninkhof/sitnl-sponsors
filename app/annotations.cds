using { sitnlSrv } from '../srv/service.cds';

annotate sitnlSrv.Sponsors with @UI.HeaderInfo: { TypeName: 'Sponsor', TypeNamePlural: 'Sponsors', Title: { Value: name } };
annotate sitnlSrv.Sponsors with {
  ID @UI.Hidden @Common.Text: { $value: name, ![@UI.TextArrangement]: #TextOnly }
};
annotate sitnlSrv.Sponsors with @UI.Identification: [{ Value: name }];
annotate sitnlSrv.Sponsors with {
  name @title: 'Name';
  motto @title: 'Motto';
  description @title: 'Description';
  logo @title: 'Logo';
  sponsortype @title: 'Sponsor Type';
  website @title: 'Website';
  twitterHandle @title: 'Twitter Handle';
  linkedInHandle @title: 'LinkedIn Handle';
  youtubeHandle @title: 'YouTube Handle';
  instagramHandle @title: 'Instagram Handle';
  facebookHandle @title: 'Facebook Handle';
  active @title: 'Active'
};

annotate sitnlSrv.Sponsors with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: name },
    { $Type: 'UI.DataField', Value: motto },
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Value: logo },
    { $Type: 'UI.DataField', Value: sponsortype },
    { $Type: 'UI.DataField', Value: website },
    { $Type: 'UI.DataField', Value: twitterHandle },
    { $Type: 'UI.DataField', Value: linkedInHandle },
    { $Type: 'UI.DataField', Value: youtubeHandle },
    { $Type: 'UI.DataField', Value: instagramHandle },
    { $Type: 'UI.DataField', Value: facebookHandle },
    { $Type: 'UI.DataField', Value: active }
];

annotate sitnlSrv.Sponsors with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: name },
    { $Type: 'UI.DataField', Value: motto },
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Value: logo },
    { $Type: 'UI.DataField', Value: sponsortype },
    { $Type: 'UI.DataField', Value: website },
    { $Type: 'UI.DataField', Value: twitterHandle },
    { $Type: 'UI.DataField', Value: linkedInHandle },
    { $Type: 'UI.DataField', Value: youtubeHandle },
    { $Type: 'UI.DataField', Value: instagramHandle },
    { $Type: 'UI.DataField', Value: facebookHandle },
    { $Type: 'UI.DataField', Value: active }
  ]
};

annotate sitnlSrv.Sponsors with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate sitnlSrv.Sponsors with @UI.SelectionFields: [
  name
];

