using { sitnl as my } from '../db/schema.cds';

@path : '/api'
@protocol : 'rest'
service sitnlApi
{
    annotate sponsors
    {
        name
            @cds.api.ignore : ifnull;
    }

    annotate sponsors with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'any' ] }
    ];

    @readonly
    entity sponsors as
        projection on my.Sponsors
        {
            *
        }
        excluding
        {
            active
        }
        where active = true;
}

annotate sitnlApi with @requires :
[
    'any'
];
