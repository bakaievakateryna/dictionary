sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'deutchwo/Deutscworterbuch/test/integration/FirstJourney',
		'deutchwo/Deutscworterbuch/test/integration/pages/WortList',
		'deutchwo/Deutscworterbuch/test/integration/pages/WortObjectPage'
    ],
    function(JourneyRunner, opaJourney, WortList, WortObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('deutchwo/Deutscworterbuch') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheWortList: WortList,
					onTheWortObjectPage: WortObjectPage
                }
            },
            opaJourney.run
        );
    }
);