# Check for WORKSPACE_HEAD and BUILD_HEAD - if they are not set, then we don't want to set anything
if [ -z $WORKSPACE_HEAD ]; then
    echo "No workspace head defined"
    return 0
fi

if [ -z $BUILD_HEAD ]; then
    echo "No build head defined"
    return 0
fi

export LOGREGISTRATION_ROOT=$WORKSPACE_HEAD/ngp/registration
export SRC_HEAD=$WORKSPACE_HEAD/ngp/andes
export DERBASE=$BUILD_HEAD/ngp/andes/RedHat6
export LD_LIBRARY_PATH=$DERBASE/lib:$DERBASE/thirdparty/lib

export CFG=debug

export GMK_COMPAT=5
export CFG="debug"

if [ ! -d $SRC_HEAD ]; then
    echo SRC_HEAD is invalid: [$SRC_HEAD]
fi

if [ ! -d $DERBASE ]; then
    echo DERBASE is invalid: [$DERBASE]
fi
