sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'deutchwo/Studentapplication/test/integration/FirstJourney',
		'deutchwo/Studentapplication/test/integration/pages/StudentWortList',
		'deutchwo/Studentapplication/test/integration/pages/StudentWortObjectPage'
    ],
    function(JourneyRunner, opaJourney, StudentWortList, StudentWortObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('deutchwo/Studentapplication') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStudentWortList: StudentWortList,
					onTheStudentWortObjectPage: StudentWortObjectPage
                }
            },
            opaJourney.run
        );
    }
);