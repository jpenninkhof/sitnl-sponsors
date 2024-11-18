namespace sitnl;

using { cuid } from '@sap/cds/common';

entity Sponsors : cuid
{
    name : String(100)
        @mandatory;
    motto : String(500);
    description : LargeString;
    logo : String(1000);
    sponsortype : String(100);
    website : String(200);
    twitterHandle : String(50);
    linkedInHandle : String(50);
    youtubeHandle : String(50);
    instagramHandle : String(50);
    facebookHandle : String(50);
    active : Boolean default true;
}

annotate Sponsors with @assert.unique :
{
    name : [ name ],
};
