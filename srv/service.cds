using { sitnl as my } from '../db/schema.cds';

@path : '/odata'
service sitnlSrv
{
    @odata.draft.enabled
    entity Sponsors as
        projection on my.Sponsors;
}