using sitnlSrv as service from '../../srv/service';
using from '../annotations';

annotate service.Sponsors with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Value : motto,
            ![@UI.Hidden],
        },
        {
            $Type : 'UI.DataField',
            Value : description,
            ![@UI.Hidden],
        },
        {
            $Type : 'UI.DataField',
            Value : logo,
            ![@UI.Hidden],
        },
        {
            $Type : 'UI.DataField',
            Value : sponsortype,
        },
        {
            $Type : 'UI.DataField',
            Value : website,
            ![@UI.Hidden],
        },
        {
            $Type : 'UI.DataField',
            Value : twitterHandle,
            ![@UI.Hidden],
        },
        {
            $Type : 'UI.DataField',
            Value : linkedInHandle,
            ![@UI.Hidden],
        },
        {
            $Type : 'UI.DataField',
            Value : youtubeHandle,
            ![@UI.Hidden],
        },
        {
            $Type : 'UI.DataField',
            Value : instagramHandle,
            ![@UI.Hidden],
        },
        {
            $Type : 'UI.DataField',
            Value : facebookHandle,
            ![@UI.Hidden],
        },
        {
            $Type : 'UI.DataField',
            Value : active,
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'Main',
            Label : 'General Information',
            Target : '@UI.FieldGroup#Main',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Details',
            ID : 'Details',
            Target : '@UI.FieldGroup#Details',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Socials',
            ID : 'Socials',
            Target : '@UI.FieldGroup#Socials',
        },
    ],
    UI.FieldGroup #Socials : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : website,
            },
            {
                $Type : 'UI.DataField',
                Value : facebookHandle,
            },
            {
                $Type : 'UI.DataField',
                Value : linkedInHandle,
            },
            {
                $Type : 'UI.DataField',
                Value : youtubeHandle,
            },
            {
                $Type : 'UI.DataField',
                Value : instagramHandle,
            },
            {
                $Type : 'UI.DataField',
                Value : twitterHandle,
            },
        ],
    },
    UI.FieldGroup #Main : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Value : sponsortype,
            },
            {
                $Type : 'UI.DataField',
                Value : active,
            },
        ],
    },
    UI.FieldGroup #Details : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : motto,
            },
            {
                $Type : 'UI.DataField',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Value : logo,
            },
        ],
    },
);

annotate service.Sponsors with {
    description @UI.MultiLineText : true
};

annotate service.Sponsors with {
    logo @UI.MultiLineText : true
};

