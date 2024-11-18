sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sitnl/sponsors/test/integration/FirstJourney',
		'sitnl/sponsors/test/integration/pages/SponsorsList',
		'sitnl/sponsors/test/integration/pages/SponsorsObjectPage'
    ],
    function(JourneyRunner, opaJourney, SponsorsList, SponsorsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sitnl/sponsors') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSponsorsList: SponsorsList,
					onTheSponsorsObjectPage: SponsorsObjectPage
                }
            },
            opaJourney.run
        );
    }
);