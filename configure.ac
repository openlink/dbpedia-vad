AC_INIT([virtuoso-dbpedia-vad], m4_esyscmd([./gen_version.sh | tr -d '\n']), [support@openlinksw.com])
AM_INIT_AUTOMAKE([foreign])

# --------------------------------------------------------------
# Check for python (vadpacker)
# --------------------------------------------------------------
AM_PATH_PYTHON([2.7])


# --------------------------------------------------------------
# Check for vadpacker as distributed with Virtuoso
# Allow a manual override
# --------------------------------------------------------------
AC_ARG_WITH(
  [vadpacker],
  [AS_HELP_STRING(
    [--with-vadpacker=DIR],
    [Specify the full path to the vadpacker script to use. If not provided configure will search the PATH.])],
    [
	case "$withval" in
	yes|no)
		vadpacker_dir=$srcdir/vadpacker
		;;
	*)
		vadpacker_dir="$withval"
		;;
	esac
    ],[vadpacker_dir=$srcdir/vadpacker])

abs_vadpacker_dir=`cd "$vadpacker_dir" && pwd`
AC_PATH_PROG([VADPACKER], [vadpacker.py], notfound, ["$abs_vadpacker_dir:$PATH"])
if test "x$VADPACKER" = "xnotfound"; then
  AC_MSG_ERROR([cannot find vadpacker.py. Consider using --with-vadpacker=DIR])
fi


# --------------------------------------------------------------
# Allow to specify the installation vad dir
# --------------------------------------------------------------
AC_ARG_WITH(
  [vaddir],
  [AS_HELP_STRING(
    [--with-vaddir=PATH],
    [Specify the full path to where the vad packages should be installed. Defaults to DATADIR/virtuoso/vad.])],
  [vaddir=${withval}],
  [vaddir=$datadir/virtuoso/vad])


# Make all required variables available
AC_SUBST([vaddir])

AC_CONFIG_FILES([Makefile])

AC_OUTPUT

echo ""
echo "Configuration results:"
echo "----------------------"
echo "VAD version:   $PACKAGE_VERSION"
echo "Python:        $PYTHON ($PYTHON_VERSION)"
echo "Vadpacker:     $VADPACKER"
echo ""
