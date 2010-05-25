/*
 * $Id$
 */

/*
 * Harbour Project source code:
 *    demonstration/test client code for OLE server using hash array with
 *    strict item order (associative hash array) to define OLE objects
 *    with fixed message numbers (DISPIDs)
 *
 * Copyright 2010 Przemyslaw Czerpak <druzus / at / priv.onet.pl>
 * www - http://www.harbour-project.org
 */

PROCEDURE Main()
   LOCAL oObject

   oObject := win_OleCreateObject( "MyOleTimeServer" )

   IF !Empty( oObject )
      ? "DATE:", oObject:date()
      ? "TIME:", oObject:time()
      ? "DATTIME:", oObject:datetime()
      ? "VALUE:", oObject:value
      ? "GETVALUE:", oObject:getvalue()
      oObject:value := "hello"
      ? "VALUE:", oObject:value
      ? "GETVALUE:", oObject:getvalue()
   ELSE
      ? "Can not access 'MyOleTimeServer' OLE server."
   ENDIF

   WAIT
RETURN