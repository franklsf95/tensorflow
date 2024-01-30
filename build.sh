#!/bin/bash
set -ex

bazel build //tensorflow/tools/pip_package:build_pip_package
./bazel-bin/tensorflow/tools/pip_package/build_pip_package --nightly_flag /tmp/tensorflow_pkg
pip uninstall -y tf-nightly
pip install /tmp/tensorflow_pkg/tf_nightly-2.16.0-cp311-cp311-linux_x86_64.whl
