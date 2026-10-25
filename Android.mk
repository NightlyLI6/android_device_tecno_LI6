#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),LI6)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif

ifeq ($(TARGET_DEVICE),LI6)
FP_SYMLINK := $(TARGET_OUT_VENDOR)/lib64/hw/fingerprint.default.so
$(FP_SYMLINK):
	@echo "Symlink: $@ -> gf_fingerprint.default.so"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf gf_fingerprint.default.so $@
ALL_DEFAULT_INSTALLED_MODULES += $(FP_SYMLINK)
endif
