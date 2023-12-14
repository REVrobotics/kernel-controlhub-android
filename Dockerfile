FROM ubuntu:18.04

# NOTE: This Dockerfile needs to be manually updated if the kernel or Android version is updated.

# Run these commands to build the kernel.
# docker build --tag ch-kernel-build .
# docker run -i -t -v .:/build/kernel ch-kernel-build

RUN apt-get update -y && apt-get install -y python build-essential git

ENV GCC_PARENT=/build/prebuilts/gcc/linux-x86/aarch64/
RUN mkdir -p $GCC_PARENT \
    && cd $GCC_PARENT \
    && git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9 \
    && cd aarch64-linux-android-4.9 \
    && git checkout refs/tags/android-7.1.2_r6

WORKDIR /build/kernel
ENTRYPOINT ["./build-rk3328-kernel.sh"]
