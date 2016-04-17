dnl $Id$
dnl config.m4 for extension entity

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

PHP_ARG_WITH(entity, for entity support,
Make sure that the comment is aligned:
[  --with-entity             Include entity support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(entity, whether to enable entity support,
Make sure that the comment is aligned:
[  --enable-entity           Enable entity support])

if test "$PHP_ENTITY" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-entity -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/entity.h"  # you most likely want to change this
  dnl if test -r $PHP_ENTITY/$SEARCH_FOR; then # path given as parameter
  dnl   ENTITY_DIR=$PHP_ENTITY
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for entity files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       ENTITY_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$ENTITY_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the entity distribution])
  dnl fi

  dnl # --with-entity -> add include path
  dnl PHP_ADD_INCLUDE($ENTITY_DIR/include)

  dnl # --with-entity -> check for lib and symbol presence
  dnl LIBNAME=entity # you may want to change this
  dnl LIBSYMBOL=entity # you most likely want to change this

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $ENTITY_DIR/$PHP_LIBDIR, ENTITY_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_ENTITYLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong entity lib version or lib not found])
  dnl ],[
  dnl   -L$ENTITY_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(ENTITY_SHARED_LIBADD)

  PHP_NEW_EXTENSION(entity, entity.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
