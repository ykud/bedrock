﻿601,100
602,"Bedrock.Dim.Consol.Create.Leaf"
562,"NULL"
586,"}Dimensions"
585,"}Dimensions"
564,
565,"n^paQ9L>ixFaPoawu^\01sI9eyPTzG:ixYiZVeF<D<HLDGOj`qfQeL4>draOSrnA9SV3s1R5V5h^?sj4nRhYh<Kt;oJP]Clg1Nz6F;[^@wCU8_;BMvvi7lb3t:40Rl[3yJQ:r[X[wBX<hiDkxTvGSJ?DOPK5T0?nB?`VeYSNJCs\ngJKtazHmP^ljv<kyH4No`sJf@r;"
559,1
928,0
593,
594,
595,
597,
598,
596,
800,
801,
566,0
567,","
588,"."
589,"."
568,""""
570,
571,All
569,0
592,0
599,1000
560,4
pDimension
pConsol
pMemberConsol
pDebug
561,4
2
2
2
1
590,4
pDimension,""
pConsol,""
pMemberConsol,""
pDebug,0
637,4
pDimension,"Dimension"
pConsol,"Consolidation Name"
pMemberConsol,"The element is a member of the consolidation."
pDebug,"Debug Mode"
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,56

#****Begin: Generated Statements***
#****End: Generated Statements****

### Start Prolog ###

################################################################################################# 
##~~Join the bedrock TM1 community on GitHub https://github.com/cubewise-code/bedrock Ver 4.0~~##
################################################################################################# 

#This Process was changed into shell, that will call another process from Bedrock v4.
##Global Variables
StringGlobalVariable('sProcessReturnCode');
NumericGlobalVariable('nProcessReturnCode');
nProcessReturnCode= 0;

### Constants ###
cThisProcName   = GetProcessName();
cUserName       = TM1User();
cMsgErrorContent= 'User:%cUserName% Process:%cThisProcName% ErrorMsg:%sMessage%';
cTimeStamp      = TimSt( Now, '\Y\m\d\h\i\s' );
sRandomInt      = NumberToString( INT( RAND( ) * 1000 ));
cDebugFile      = GetProcessErrorFileDirectory | cThisProcName | '.' | cTimeStamp | '.' | sRandomInt ;


### Initialise Debug ###
If( pDebug >= 1 );
  # Set debug file name
  sDebugFile = cDebugFile | 'Prolog.debug';
  # Log start time
  AsciiOutput( sDebugFile, 'Process Started: ' | TimSt( Now, '\d-\m-\Y \h:\i:\s' ) );
  # Log parameters
  AsciiOutput( sDebugFile, 'Parameters: pDimension      : ' | pDimension );
  AsciiOutput( sDebugFile, '            pConsol         : ' | pConsol );
  AsciiOutput( sDebugFile, '            pMemberConsol   : ' | pMemberConsol );
EndIf;

nRet = EXECUTEPROCESS(' }bedrock.hier.consol.flat.create',
  'pLogOutput', pDebug,
  'pStrictErrorHandling',1,
  'pDim', pDimension,
  'pHier', '',
  'pTgtConsol', pConsol,
  'pSrcConsol', pMemberConsol
  );

IF(nRet <> 0);
    sMessage = 'the process incurred at least 1 major error and consequently aborted. Please see above lines in this file for more details.';
    nProcessReturnCode = 0;
    LogOutput( 'ERROR', Expand( cMsgErrorContent ) );
    sProcessReturnCode = Expand( '%sProcessReturnCode% Process:%cThisProcName% aborted. Check tm1server.log for details.' );
    ProcessError;
EndIf;

### End Prolog ###

573,13

#****Begin: Generated Statements***
#****End: Generated Statements****


### Start Metadata ###

################################################################################################# 
##~~Join the bedrock TM1 community on GitHub https://github.com/cubewise-code/bedrock Ver 4.0~~##
################################################################################################# 



574,4

#****Begin: Generated Statements***
#****End: Generated Statements****

575,4

#****Begin: Generated Statements***
#****End: Generated Statements****

576,CubeAction=1511DataAction=1503CubeLogChanges=0
930,0
638,1
804,0
1217,1
900,
901,
902,
938,0
937,
936,
935,
934,
932,0
933,0
903,
906,
929,
907,
908,
904,0
905,0
909,0
911,
912,
913,
914,
915,
916,
917,0
918,1
919,0
920,50000
921,""
922,""
923,0
924,""
925,""
926,""
927,""
