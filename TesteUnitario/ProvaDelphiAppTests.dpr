program ProvaDelphiAppTests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  TestuntFunctionTarefas1 in 'TestuntFunctionTarefas1.pas',
  untFunctionTarefas1 in '..\units\untFunctionTarefas1.pas',
  untFunctionTarefas2 in '..\units\untFunctionTarefas2.pas',
  TestuntFunctionTarefas2 in 'TestuntFunctionTarefas2.pas',
  TestuntFunctionTarefas3 in 'TestuntFunctionTarefas3.pas',
  untFunctionTarefas3 in '..\units\untFunctionTarefas3.pas';

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

