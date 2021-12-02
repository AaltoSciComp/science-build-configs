# vimdiff to syncronize
#
# dp   move code ->  (put)
# do   move code <-  (get)
# ]c   jump next  ( [c  jump previous )

DIFF=${DIFF:-vimdiff}

case $1 in
  triton)
    $DIFF configs/fgci-centos7-{dev,generic}/anaconda/build_config.yaml
    ;;
  fgci)
    $DIFF configs/{fgci-centos7-generic,fgci-cvmfs-centos7-generic}/anaconda/build_config.yaml
    ;;
  aaltodev)
    $DIFF configs/{fgci-centos7-dev,aalto-ubuntu1804-dev}/anaconda/build_config.yaml
    ;;
  aalto)
    $DIFF configs/aalto-ubuntu1804-{dev,generic}/anaconda/build_config.yaml
    ;;
  *)
      echo "Automatically diff different anaconda build config files"
      echo "Options:"
      echo "  triton, fgci, aaltodev, aalto"
      echo "Run these roughly in this order to propagate configs from"
      echo "fgci-centos-7-dev to all other configs".
      echo
      echo "To use a different diff tool, set DIFF".
 esac
