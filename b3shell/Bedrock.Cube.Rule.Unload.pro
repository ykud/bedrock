﻿601,100
602,"Bedrock.Cube.Rule.Unload"
562,"NULL"
586,"C:\TM1Data\Bedrock3\Data\Excel.RUX"
585,"C:\TM1Data\Bedrock3\Data\Excel.RUX"
564,
565,"mZiRwE>yIwK9ma]4l0P_:o\amea3P2OraesT?==G^IJZRXYTADCa`i>BALI7H:xhRiesHvX6lEqW\7kDxATDpQ3;ZZ[GuYt<y[U[g]nuBpke<\tFOJlKIT6GsyQ6jdTrJKR5Lx7B`>Jhzt^]mxuE;wA`j_7rv0xJ1uyr19VuKIB3LI[gQ\s@]@HQ2BjCIv_;nJv75sZV"
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
589,","
568,""""
570,
571,
569,0
592,0
599,1000
560,3
pSourceCube
pRuleName
pDebug
561,3
2
2
1
590,3
pSourceCube,""
pRuleName,""
pDebug,0
637,3
pSourceCube,"Unload rule from this cube."
pRuleName,"Optional: The name of the temporary rule file."
pDebug,"Debug Mode"
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,66

#****Begin: Generated Statements***
#****End: Generated Statements****


################################################################################################# ####################
##~~Join the bedrock TM1 community on GitHub https://github.com/cubewise-code/bedrock Ver 4.0~~##
################################################################################################# 

## This process will copy the rule rule file to a temporary file and load a blank rule file.

#This Process was changed into shell, that will call another process from Bedrock v4.


### Constants ###

cProcess = 'Bedrock.Cube.Rule.Unload';
cUser = TM1User();
cTimeStamp = TimSt( Now, '\Y\m\d\h\i\s' );
sRandomInt = NumberToString( INT( RAND( ) * 1000 ));
cDebugFile = GetProcessErrorFileDirectory | cProcess | '.' | cTimeStamp | '.' | sRandomInt ;
cMsgErrorLevel = 'ERROR';
cMsgErrorContent = '%cProcess% : %sMessage% : %cUser%';
cMsgErrorShell = Expand('Executing process %cProcess% has failed.');


### Initialise Debug ###
If( pDebug >= 1 );

  # Set debug file name
  sDebugFile = cDebugFile | 'Prolog.debug';

  # Log start time
  AsciiOutput( sDebugFile, 'Process Started: ' | TimSt( Now, '\d-\m-\Y \h:\i:\s' ) );

  # Log parameters
  AsciiOutput( sDebugFile, 'Parameters:    pSourceCube: ' | pSourceCube );
  AsciiOutput( sDebugFile, '               pRuleName: ' | pRuleName );
  AsciiOutput( sDebugFile, '' );

EndIf;

sProc = '}bedrock.cube.rule.manage';

nRes = EXECUTEPROCESS( sProc,
  'pLogOutput', pDebug,
  'pStrictErrorHandling',1,
  'pCube', pSourceCube,
  'pMode', 'UNLOAD',
  'pFileName', pRuleName
  );
  


IF ( nRes <> ProcessExitNormal() );
  sMessage = cMsgErrorShell;
  LogOutput( cMsgErrorLevel, Expand( cMsgErrorContent ) );
  if ( pDebug >= 1 );
    AsciiOutput( sDebugFile, Expand( cMsgErrorContent ) );
    AsciiOutput( sDebugFile, Expand( 'Process exit code: %nRes%' ) );
    AsciiOutput( sDebugFile, 'Process Finished: ' | TimSt( Now, '\d-\m-\Y \h:\i:\s' ) );
  endif;
  ProcessError();
ENDIF;


573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,8

#****Begin: Generated Statements***
#****End: Generated Statements****





575,12

#****Begin: Generated Statements***
#****End: Generated Statements****

If( pDebug >= 1 );
  # Set debug file name
  sDebugFile = cDebugFile | 'Epilog.debug';
  # Log finish time
  AsciiOutput( sDebugFile, 'Process Finished: ' | TimSt( Now, '\d-\m-\Y \h:\i:\s' ) );

EndIf;

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
920,0
921,""
922,""
923,0
924,""
925,""
926,""
927,""
