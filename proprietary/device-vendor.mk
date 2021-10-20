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
    ro.hardware.vulkan=adreno \
    ro.hardware.keystore_desede=true \
    ro.crypto.dm_default_key.options_format.version=2 \
    ro.crypto.volume.metadata.method=dm-default-key \
    persist.vendor.sensors.odl.adsp=true \
    persist.vendor.sensors.allow_non_default_discovery=true \
    drm.service.enabled=true \
    keyguard.no_require_sim=true \
    media.mediadrmservice.enable=true \
    ro.com.android.prov_mobiledata=false \
    ro.storage_manager.enabled=false \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural;com.google.android.systemui.gxoverlay
PRODUCT_PRODUCT_PROPERTIES += \
    ro.gfx.driver.1=com.qualcomm.qti.gpudrivers.lito.api30 \
    graphics.gpu.profiler.support=true \
    graphics.gpu.profiler.vulkan_layer_apk=com.google.pixel.redbull.gpuprofiling.vulkanlayer
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.ime.bs_theme=true \
    ro.opa.eligible_device=true \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.com.google.clientidbase=android-google \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.setupwizard.esim_cid_ignore=00000001 \
    ro.setupwizard.rotation_locked=true \
    setupwizard.feature.baseline_setupwizard_enabled=true \
    setupwizard.feature.show_pai_screen_in_main_flow.carrier1839=false \
    setupwizard.feature.skip_button_use_mobile_data.carrier1839=true \
    setupwizard.theme=glif_v3_light \
    ro.com.google.ime.theme_id=5 \
    ro.com.google.ime.system_lm_dir=/product/usr/share/ime/google/d3_lms \
    setupwizard.feature.show_pixel_tos=true \
    ro.llkd.enable=false \
    ro.storage_manager.show_opt_in=false \
    setupwizard.feature.show_support_link_in_deferred_setup=false \
    ro.carriersetup.vzw_consent_page=true \
    setupwizard.feature.device_default_dark_mode=true \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# Runtime Resource overlays
PRODUCT_PACKAGES += \
    CellBroadcastReceiverOverlay \
    CellBroadcastServiceOverlay \
    CodeAuroraImsOverlay \
    PixelConfigOverlay2018 \
    PixelConfigOverlay2019 \
    PixelConfigOverlay2019Midyear \
    PixelConfigOverlayBramble \
    PixelConfigOverlayCommon \
    PixelConnectivityOverlay2020 \
    PixelSetupWizardOverlay \
    PixelSetupWizardOverlay2019 \
    SettingsOverlayBramble \
    SystemUIGXOverlay \
    TelecomOverlayBramble \
    TelephonyProviderOverlayBramble \
    TeleServiceOverlayBramble

# Prebuilt APKs/JARs from 'vendor/app'
PRODUCT_PACKAGES += \
    adreno_graphics_driver \
    CACertService \
    CneApp \
    com.qualcomm.qti.gpudrivers.lito.api30 \
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
    PixelCameraServicesBramble \
    SSRestartDetector \
    Tycho \
    VZWAPNLib \
    xdivert

# Prebuilt APKs/JARs from 'product/framework'
PRODUCT_PACKAGES += \
    com.google.android.dialer.support \
    libhwinfo \
    qti-telephony-hidl-wrapper-prd \
    remotesimlockmanagerlibrary \
    uimgbalibrary \
    uimgbamanagerlibrary \
    uimremotesimlocklibrary \
    uimservicelibrary

# Prebuilt APKs/JARs from 'product/priv-app'
PRODUCT_PACKAGES += \
    AmbientSensePrebuilt \
    AppDirectedSMSService \
    CarrierLocation \
    CarrierServices \
    CarrierSettings \
    CarrierWifi \
    CbrsNetworkMonitor \
    ConnMO \
    DCMO \
    DiagMon \
    DMService \
    EuiccGoogle \
    GCS \
    HardwareInfo \
    HotwordEnrollmentOKGoogleRT5514P \
    HotwordEnrollmentXGoogleRT5514P \
    OdadPrebuilt \
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
    Flipendo \
    QtiTelephonyService \
    uceShimService \
    uimremoteclient \
    uimremoteserver

# Prebuilt APKs/JARs from 'system_ext/framework'
PRODUCT_PACKAGES += \
    ActivityExt \
    audiosphere \
    com.android.hotwordenrollment.common.util \
    com.google.android.camera.extensions \
    com.qti.dpmframework \
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
    dpmapi \
    google-ril \
    qcrilhook \
    qmapbridge \
    qti-telephony-hidl-wrapper \
    qti-telephony-utils \
    RadioConfigLib \
    uimlpalibrary \
    uimremoteclientlibrary \
    uimremoteserverlibrary \
    vendor.qti.data.factory-V1.0-java \
    vendor.qti.data.factory-V2.0-java \
    vendor.qti.data.factory-V2.1-java \
    vendor.qti.data.factory-V2.2-java \
    vendor.qti.hardware.data.cne.internal.api-V1.0-java \
    vendor.qti.hardware.data.cne.internal.constants-V1.0-java \
    vendor.qti.hardware.data.cne.internal.server-V1.0-java \
    vendor.qti.hardware.data.connection-V1.0-java \
    vendor.qti.hardware.data.dynamicdds-V1.0-java \
    vendor.qti.hardware.data.iwlan-V1.0-java \
    vendor.qti.hardware.data.latency-V1.0-java \
    vendor.qti.hardware.data.qmi-V1.0-java \
    vendor.qti.hardware.dpmservice-V1.0-java \
    vendor.qti.hardware.fingerprint-V1.0-java \
    vendor.qti.hardware.mwqemadapter-V1.0-java \
    vendor.qti.hardware.slmadapter-V1.0-java \
    vendor.qti.ims.callinfo-V1.0-java \
    vendor.qti.ims.factory-V1.0-java \
    vendor.qti.ims.factory-V1.1-java \
    vendor.qti.ims.rcsconfig-V1.0-java \
    vendor.qti.latency-V2.0-java \
    vendor.qti.voiceprint-V1.0-java

# Prebuilt APKs/JARs from 'system_ext/priv-app'
PRODUCT_PACKAGES += \
    CarrierSetup \
    ConnectivityThermalPowerManager \
    EuiccSupportPixel \
    EuiccSupportPixelPermissions \
    grilservice \
    HbmSVManager \
    ims \
    LLKAgent \
    MyVerizonServices \
    OBDM_Permissions \
    obdm_stub \
    qcrilmsgtunnel \
    RilConfigService \
    TurboAdapter \
    UvExposureReporter

# Prebuilt APKs libs symlinks from 'system_ext/priv-app'
PRODUCT_PACKAGES += \
    libimscamera_jni_64.so \
    libimsmedia_jni_64.so \
    libpowerstatshaldataprovider_64.so

# Prebuilt shared libraries
PRODUCT_PACKAGES += \
    libadsprpc \
    libsdsprpc

# Enforced modules from user configuration
PRODUCT_PACKAGES += \
    android.hardware.identity_credential.xml \
    android.hardware.identity-support-lib.vendor \
    android.hardware.sensors@2.0-ScopedWakelock.vendor \
    android.hardware.sensors@2.0-service.multihal \
    com.google.hardware.pixel.display-V1-ndk_platform.vendor \
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
    nos_app_weaver \
    RcsService

# Partitions to add in AB OTA images
AB_OTA_PARTITIONS += \
    product \
    system_ext \
    vendor
