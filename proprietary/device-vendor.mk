# Copyright (C) 2021 Benzo Rom
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
$(call inherit-product, vendor/google_devices/bramble/bramble-vendor-blobs.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.egl=adreno \
    ro.hardware.vulkan=adreno
PRODUCT_PROPERTY_OVERRIDES += \
    ro.crypto.dm_default_key.options_format.version=2 \
    persist.vendor.sensors.odl.adsp=true \
    persist.vendor.sensors.allow_non_default_discovery=true \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural \
    drm.service.enabled=true \
    media.mediadrmservice.enable=true \
    ro.com.android.prov_mobiledata=false \
    ro.storage_manager.enabled=false

PRODUCT_PRODUCT_PROPERTIES += \
    ro.gfx.driver.1=com.qualcomm.qti.gpudrivers.lito.api30 \
    graphics.gpu.profiler.support=true \
    graphics.gpu.profiler.vulkan_layer_apk=com.google.pixel.redbull.gpuprofiling.vulkanlayer \
    ro.com.android.dataroaming=false \
    ro.llkd.enable=false \
    ro.carriersetup.vzw_consent_page=true \
    setupwizard.feature.show_support_link_in_deferred_setup=false \
    setupwizard.feature.device_default_dark_mode=true

# Runtime Resource overlays
PRODUCT_PACKAGES += \
    CarrierConfigOverlay \
    CodeAuroraImsOverlay \
    PixelConfigOverlay2018 \
    PixelConfigOverlay2019 \
    PixelConfigOverlay2019Midyear \
    PixelConfigOverlayBramble \
    PixelConfigOverlayCommon \
    PixelSetupWizardOverlay2019 \
    SafetyRegulatoryInfoBramble \
    SettingsOverlayBramble \
    SettingsProviderOverlay \
    SystemUIOverlayBramble \
    TelecomOverlayBramble \
    TelephonyProviderOverlayBramble \
    TeleserviceOverlayBramble

# Prebuilt APKs/JARs from 'vendor/app'
PRODUCT_PACKAGES += \
    adreno_graphics_driver \
    CACertService \
    CneApp \
    gpu_profiling_vulkan_layer \
    IWlanService \
    TimeService

# Prebuilt APKs libs symlinks from 'vendor/app'
PRODUCT_PACKAGES += \
    libvndfwk_detect_jni.qti_64.so

# Prebuilt APKs/JARs from 'vendor/framework'
PRODUCT_PACKAGES += \
    com.google.android.camera.experimental2020

# Prebuilt APKs/JARs from 'product/app'
PRODUCT_PACKAGES += \
    SSRestartDetector \
    Tycho \
    VZWAPNLib

# Prebuilt APKs/JARs from 'product/framework'
PRODUCT_PACKAGES += \
    libhwinfo

# Prebuilt overlay from 'product/overlay'
PRODUCT_PACKAGES += \
    PixelSetupWizard__auto_generated_rro_product

# Prebuilt APKs/JARs from 'product/priv-app'
PRODUCT_PACKAGES += \
    AmbientSensePrebuilt \
    AppDirectedSMSService \
    CarrierLocation \
    CarrierServices \
    CarrierSettings \
    CarrierWifi \
    ConnMO \
    DCMO \
    DiagMon \
    DMService \
    EuiccGoogle \
    EuiccSupportPixel \
    GCS \
    HardwareInfo \
    HotwordEnrollmentOKGoogleRT5514P \
    HotwordEnrollmentXGoogleRT5514P \
    MyVerizonServices \
    OBDM_Permissions \
    obdm_stub \
    OemDmTrigger \
    SCONE \
    SprintDM \
    SprintHM \
    TetheringEntitlement \
    USCCDM \
    WfcActivation

# Prebuilt APKs libs symlinks from 'product/priv-app'
PRODUCT_PACKAGES += \
    libdmengine_32.so \
    libdmjavaplugin_32.so

# Prebuilt APKs/JARs from 'system_ext/app'
PRODUCT_PACKAGES += \
    atfwd \
    com.qualcomm.qti.services.secureui \
    datastatusnotification \
    DeviceStatisticsService \
    Flipendo \
    QtiTelephonyService \
    uceShimService \
    uimremoteclient \
    uimremoteserver \
    UvExposureReporter \
    xdivert

# Prebuilt APKs/JARs from 'system_ext/framework'
PRODUCT_PACKAGES += \
    com.android.hotwordenrollment.common.util \
    com.qti.media.secureprocessor \
    com.qualcomm.qti.imscmservice-V2.0-java \
    com.qualcomm.qti.imscmservice-V2.1-java \
    com.qualcomm.qti.imscmservice-V2.2-java \
    com.qualcomm.qti.uceservice-V2.0-java \
    com.qualcomm.qti.uceservice-V2.1-java \
    com.qualcomm.qti.uceservice-V2.2-java \
    com.quicinc.cne.api-V1.0-java \
    com.quicinc.cne.api-V1.1-java \
    com.quicinc.cne.constants-V1.0-java \
    com.quicinc.cne.constants-V2.0-java \
    com.quicinc.cne.constants-V2.1-java \
    ConnectivityExt \
    qcrilhook \
    qmapbridge \
    qti-telephony-hidl-wrapper \
    qti-telephony-utils \
    RadioConfigLib \
    remotesimlockmanagerlibrary \
    uimgbalibrary \
    uimgbamanagerlibrary \
    uimlpalibrary \
    uimremoteclientlibrary \
    uimremoteserverlibrary \
    uimremotesimlocklibrary \
    uimservicelibrary \
    vendor.qti.data.factory-V1.0-java \
    vendor.qti.data.factory-V2.0-java \
    vendor.qti.data.factory-V2.1-java \
    vendor.qti.hardware.data.cne.internal.api-V1.0-java \
    vendor.qti.hardware.data.cne.internal.constants-V1.0-java \
    vendor.qti.hardware.data.cne.internal.server-V1.0-java \
    vendor.qti.hardware.data.connection-V1.0-java \
    vendor.qti.hardware.data.dynamicdds-V1.0-java \
    vendor.qti.hardware.data.iwlan-V1.0-java \
    vendor.qti.hardware.data.latency-V1.0-java \
    vendor.qti.hardware.data.qmi-V1.0-java \
    vendor.qti.hardware.fingerprint-V1.0-java \
    vendor.qti.hardware.slmadapter-V1.0-java \
    vendor.qti.ims.callinfo-V1.0-java \
    vendor.qti.ims.factory-V1.0-java \
    vendor.qti.ims.rcsconfig-V1.0-java \
    vendor.qti.latency-V2.0-java \
    vendor.qti.voiceprint-V1.0-java

# Prebuilt APKs/JARs from 'system_ext/priv-app'
PRODUCT_PACKAGES += \
    CarrierSetup \
    CbrsNetworkMonitor \
    ConnectivityThermalPowerManager \
    grilservice \
    HbmSVManager \
    ims \
    LLKAgent \
    qcrilmsgtunnel \
    RilConfigService \
    TurboAdapter

# Prebuilt APKs libs symlinks from 'system_ext/priv-app'
PRODUCT_PACKAGES += \
    libimscamera_jni_64.so \
    libimsmedia_jni_64.so

# Prebuilt shared libraries
PRODUCT_PACKAGES += \
    libadsprpc \
    libsdsprpc

# Enforced modules from user configuration
PRODUCT_PACKAGES += \
    android.hardware.identity-support-lib.vendor \
    android.hardware.sensors@2.0-ScopedWakelock.vendor \
    android.hardware.sensors@2.0-service.multihal \
    com.google.hardware.pixel.display-ndk_platform.vendor \
    chre \
    flp.conf \
    libavservices_minijail.vendor \
    libcld80211 \
    libcodec2_hidl@1.0.vendor \
    libcodec2_vndk.vendor \
    libcppbor.vendor \
    libdrm.vendor \
    libhidltransport.product \
    libhidltransport.vendor \
    libhwbinder.vendor \
    libjson \
    libkeymaster_messages.vendor \
    libkeymaster_portable.vendor \
    libmedia_ecoservice.vendor \
    libnetfilter_conntrack \
    libnos_client_citadel \
    libnosprotos \
    libpcap \
    libprotobuf-cpp-full-vendorcompat \
    libpuresoftkeymasterdevice.vendor \
    libsoft_attestation_cert.vendor \
    libstagefright_bufferpool@2.0.1.vendor \
    libteeui_hal_support.vendor \
    libtinycompress \
    libtinyxml \
    libwifi-hal \
    libwifi-hal-ctrl \
    libwifi-hal-qcom \
    nos_app_avb \
    nos_app_identity \
    nos_app_keymaster \
    nos_app_weaver

# Partitions to add in AB OTA images
AB_OTA_PARTITIONS += \
    product \
    system_ext \
    vendor
