// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let exclude = [
    "bin",
    "build-android",
    "build-linux",
    "build-mac",
    "build-windows",
    "cocoapods",
    "deps",
    "example",
    "scripts",
]

let baseCSettings: [CSetting] =  [
    .headerSearchPath("include"),
    .headerSearchPath("src"),
    .headerSearchPath("src/async"),
    .headerSearchPath("src/async/imap"),
    .headerSearchPath("src/async/pop"),
    .headerSearchPath("src/async/nntp"),
    .headerSearchPath("src/async/smtp"),
    .headerSearchPath("src/core"),
    .headerSearchPath("src/core/renderer"),
    .headerSearchPath("src/core/abstract"),
    .headerSearchPath("src/core/imap"),
    .headerSearchPath("src/core/pop"),
    .headerSearchPath("src/core/rfc822"),
    .headerSearchPath("src/core/nntp"),
    .headerSearchPath("src/core/smtp"),
    .headerSearchPath("src/core/provider"),
    .headerSearchPath("src/core/security"),
    .headerSearchPath("src/core/basetypes"),
    .headerSearchPath("src/core/basetypes/icu-ucsdet"),
    .headerSearchPath("src/core/basetypes/icu-ucsdet/include"),
    .headerSearchPath("src/core/zip"),
    .headerSearchPath("src/core/zip/MiniZip"),
    .define("HAVE_CFNETWORK", to: "1")
]

let objCSettings: [CSetting] = [
    .headerSearchPath("src/objc/abstract"),
    .headerSearchPath("src/objc/imap"),
    .headerSearchPath("src/objc/nntp"),
    .headerSearchPath("src/objc/pop"),
    .headerSearchPath("src/objc/provider"),
    .headerSearchPath("src/objc/rfc822"),
    .headerSearchPath("src/objc/smtp"),
    .headerSearchPath("src/objc/utils"),
]

let cSources = [
    "src/async/imap/MCIMAPAsyncConnection.cpp",
    "src/async/imap/MCIMAPAsyncSession.cpp",
    "src/async/imap/MCIMAPOperation.cpp",
    "src/async/imap/MCIMAPCheckAccountOperation.cpp",
    "src/async/imap/MCIMAPConnectOperation.cpp",
    "src/async/imap/MCIMAPFetchFoldersOperation.cpp",
    "src/async/imap/MCIMAPCustomCommandOperation.cpp",
    "src/async/imap/MCIMAPRenameFolderOperation.cpp",
    "src/async/imap/MCIMAPDeleteFolderOperation.cpp",
    "src/async/imap/MCIMAPCreateFolderOperation.cpp",
    "src/async/imap/MCIMAPSubscribeFolderOperation.cpp",
    "src/async/imap/MCIMAPAppendMessageOperation.cpp",
    "src/async/imap/MCIMAPCopyMessagesOperation.cpp",
    "src/async/imap/MCIMAPMoveMessagesOperation.cpp",
    "src/async/imap/MCIMAPExpungeOperation.cpp",
    "src/async/imap/MCIMAPFetchMessagesOperation.cpp",
    "src/async/imap/MCIMAPFetchContentOperation.cpp",
    "src/async/imap/MCIMAPFetchContentToFileOperation.cpp",
    "src/async/imap/MCIMAPFetchParsedContentOperation.cpp",
    "src/async/imap/MCIMAPStoreFlagsOperation.cpp",
    "src/async/imap/MCIMAPStoreLabelsOperation.cpp",
    "src/async/imap/MCIMAPSearchOperation.cpp",
    "src/async/imap/MCIMAPIdleOperation.cpp",
    "src/async/imap/MCIMAPFetchNamespaceOperation.cpp",
    "src/async/imap/MCIMAPIdentityOperation.cpp",
    "src/async/imap/MCIMAPFolderInfoOperation.cpp",
    "src/async/imap/MCIMAPFolderInfo.cpp",
    "src/async/imap/MCIMAPCapabilityOperation.cpp",
    "src/async/imap/MCIMAPQuotaOperation.cpp",
    "src/async/imap/MCIMAPFolderStatusOperation.cpp",
    "src/async/imap/MCIMAPDisconnectOperation.cpp",
    "src/async/imap/MCIMAPMessageRenderingOperation.cpp",
    "src/async/imap/MCIMAPNoopOperation.cpp",
    "src/async/imap/MCIMAPMultiDisconnectOperation.cpp",
    "src/async/pop/MCPOPAsyncSession.cpp",
    "src/async/pop/MCPOPFetchHeaderOperation.cpp",
    "src/async/pop/MCPOPFetchMessageOperation.cpp",
    "src/async/pop/MCPOPDeleteMessagesOperation.cpp",
    "src/async/pop/MCPOPFetchMessagesOperation.cpp",
    "src/async/pop/MCPOPCheckAccountOperation.cpp",
    "src/async/pop/MCPOPNoopOperation.cpp",
    "src/async/pop/MCPOPOperation.cpp",
    "src/async/nntp/MCNNTPAsyncSession.cpp",
    "src/async/nntp/MCNNTPFetchHeaderOperation.cpp",
    "src/async/nntp/MCNNTPFetchArticleOperation.cpp",
    "src/async/nntp/MCNNTPListNewsgroupsOperation.cpp",
    "src/async/nntp/MCNNTPFetchOverviewOperation.cpp",
    "src/async/nntp/MCNNTPFetchAllArticlesOperation.cpp",
    "src/async/nntp/MCNNTPFetchServerTimeOperation.cpp",
    "src/async/nntp/MCNNTPCheckAccountOperation.cpp",
    "src/async/nntp/MCNNTPDisconnectOperation.cpp",
    "src/async/nntp/MCNNTPOperation.cpp",
    "src/async/nntp/MCNNTPPostOperation.cpp",
    "src/async/smtp/MCSMTPAsyncSession.cpp",
    "src/async/smtp/MCSMTPLoginOperation.cpp",
    "src/async/smtp/MCSMTPSendWithDataOperation.cpp",
    "src/async/smtp/MCSMTPDisconnectOperation.cpp",
    "src/async/smtp/MCSMTPNoopOperation.cpp",
    "src/async/smtp/MCSMTPOperation.cpp",
    "src/async/smtp/MCSMTPCheckAccountOperation.cpp",
    "src/core/security/MCCertificateUtils.cpp",
    "src/core/zip/MCZip.cpp",
    "src/core/zip/MiniZip/ioapi.c",
    "src/core/zip/MiniZip/unzip.c",
    "src/core/zip/MiniZip/zip.c",
    "src/core/abstract/MCErrorMessage.cpp",
    "src/core/abstract/MCAbstractMessage.cpp",
    "src/core/abstract/MCAbstractMessagePart.cpp",
    "src/core/abstract/MCAbstractMultipart.cpp",
    "src/core/abstract/MCAbstractPart.cpp",
    "src/core/abstract/MCAddress.cpp",
    "src/core/abstract/MCMessageHeader.cpp",
    "src/core/basetypes/icu-ucsdet/cmemory.c",
    "src/core/basetypes/icu-ucsdet/csdetect.cpp",
    "src/core/basetypes/icu-ucsdet/csmatch.cpp",
    "src/core/basetypes/icu-ucsdet/csr2022.cpp",
    "src/core/basetypes/icu-ucsdet/csrecog.cpp",
    "src/core/basetypes/icu-ucsdet/csrmbcs.cpp",
    "src/core/basetypes/icu-ucsdet/csrsbcs.cpp",
    "src/core/basetypes/icu-ucsdet/csrucode.cpp",
    "src/core/basetypes/icu-ucsdet/csrutf8.cpp",
    "src/core/basetypes/icu-ucsdet/cstring.c",
    "src/core/basetypes/icu-ucsdet/inputext.cpp",
    "src/core/basetypes/icu-ucsdet/uarrsort.c",
    "src/core/basetypes/icu-ucsdet/ucln_cmn.cpp",
    "src/core/basetypes/icu-ucsdet/ucln_in.cpp",
    "src/core/basetypes/icu-ucsdet/ucsdet.cpp",
    "src/core/basetypes/icu-ucsdet/udataswp.c",
    "src/core/basetypes/icu-ucsdet/uenum.c",
    "src/core/basetypes/icu-ucsdet/uinvchar.c",
    "src/core/basetypes/icu-ucsdet/umutex.cpp",
    "src/core/basetypes/icu-ucsdet/uobject.cpp",
    "src/core/basetypes/icu-ucsdet/ustring.cpp",
    "src/core/basetypes/icu-ucsdet/utrace.c",
    "src/core/basetypes/ConvertUTF.c",
    "src/core/basetypes/MCArray.cpp",
    "src/core/basetypes/MCAssert.c",
    "src/core/basetypes/MCAutoreleasePool.cpp",
    "src/core/basetypes/MCBase64.c",
    "src/core/basetypes/MCConnectionLoggerUtils.cpp",
    "src/core/basetypes/MCData.cpp",
    "src/core/basetypes/MCDataDecoderUtils.cpp",
    "src/core/basetypes/MCDataStreamDecoder.cpp",
    "src/core/basetypes/MCHash.cpp",
    "src/core/basetypes/MCHashMap.cpp",
    "src/core/basetypes/MCHTMLCleaner.cpp",
    "src/core/basetypes/MCIndexSet.cpp",
    "src/core/basetypes/MCJSON.cpp",
    "src/core/basetypes/MCJSONParser.cpp",
    "src/core/basetypes/MCLibetpan.cpp",
    "src/core/basetypes/MCLog.cpp",
    "src/core/basetypes/MCMD5.cpp",
    "src/core/basetypes/MCNull.cpp",
    "src/core/basetypes/MCObject.cpp",
    "src/core/basetypes/MCOperation.cpp",
    "src/core/basetypes/MCOperationQueue.cpp",
    "src/core/basetypes/MCRange.cpp",
    "src/core/basetypes/MCSet.cpp",
    "src/core/basetypes/MCString.cpp",
    "src/core/basetypes/MCValue.cpp",
    "src/core/imap/MCIMAPFolder.cpp",
    "src/core/imap/MCIMAPMessage.cpp",
    "src/core/imap/MCIMAPMessagePart.cpp",
    "src/core/imap/MCIMAPMultipart.cpp",
    "src/core/imap/MCIMAPNamespace.cpp",
    "src/core/imap/MCIMAPNamespaceItem.cpp",
    "src/core/imap/MCIMAPPart.cpp",
    "src/core/imap/MCIMAPSearchExpression.cpp",
    "src/core/imap/MCIMAPSession.cpp",
    "src/core/imap/MCIMAPSyncResult.cpp",
    "src/core/imap/MCIMAPFolderStatus.cpp",
    "src/core/imap/MCIMAPIdentity.cpp",
    "src/core/pop/MCPOPMessageInfo.cpp",
    "src/core/pop/MCPOPSession.cpp",
    "src/core/nntp/MCNNTPGroupInfo.cpp",
    "src/core/nntp/MCNNTPSession.cpp",
    "src/core/renderer/MCAddressDisplay.cpp",
    "src/core/renderer/MCDateFormatter.cpp",
    "src/core/renderer/MCSizeFormatter.cpp",
    "src/core/renderer/MCHTMLRenderer.cpp",
    "src/core/renderer/MCHTMLRendererCallback.cpp",
    "src/core/renderer/MCHTMLBodyRendererTemplateCallback.cpp",
    "src/core/renderer/MCHTMLRendererIMAPDataCallback.cpp",
    "src/core/rfc822/MCAttachment.cpp",
    "src/core/rfc822/MCMessageBuilder.cpp",
    "src/core/rfc822/MCMessageParser.cpp",
    "src/core/rfc822/MCMessagePart.cpp",
    "src/core/rfc822/MCMultipart.cpp",
    "src/core/smtp/MCSMTPSession.cpp",
    "src/core/provider/MCMXRecordResolverOperation.cpp",
    "src/core/provider/MCAccountValidator.cpp",
    "src/core/provider/MCMailProvider.cpp",
    "src/core/provider/MCMailProvidersManager.cpp",
    "src/core/provider/MCNetService.cpp",
]

let objCSources = [
    "src/objc/pop/MCOPOPSession.mm",
    "src/objc/pop/MCOPOPOperation.mm",
    "src/objc/pop/MCOPOPFetchHeaderOperation.mm",
    "src/objc/pop/MCOPOPFetchMessageOperation.mm",
    "src/objc/pop/MCOPOPFetchMessagesOperation.mm",
    "src/objc/pop/MCOPOPNoopOperation.mm",
    "src/objc/pop/MCOPOPMessageInfo.mm",
    "src/objc/smtp/MCOSMTPSession.mm",
    "src/objc/smtp/MCOSMTPLoginOperation.mm",
    "src/objc/smtp/MCOSMTPSendOperation.mm",
    "src/objc/smtp/MCOSMTPNoopOperation.mm",
    "src/objc/smtp/MCOSMTPOperation.mm",
    "src/objc/nntp/MCONNTPSession.mm",
    "src/objc/nntp/MCONNTPOperation.mm",
    "src/objc/nntp/MCONNTPFetchHeaderOperation.mm",
    "src/objc/nntp/MCONNTPFetchArticleOperation.mm",
    "src/objc/nntp/MCONNTPListNewsgroupsOperation.mm",
    "src/objc/nntp/MCONNTPFetchOverviewOperation.mm",
    "src/objc/nntp/MCONNTPFetchAllArticlesOperation.mm",
    "src/objc/nntp/MCONNTPFetchServerTimeOperation.mm",
    "src/objc/nntp/MCONNTPDisconnectOperation.mm",
    "src/objc/nntp/MCONNTPGroupInfo.mm",
    "src/objc/nntp/MCONNTPPostOperation.mm",
    "src/objc/abstract/MCOAbstractMessage.mm",
    "src/objc/abstract/MCOAbstractMessagePart.mm",
    "src/objc/abstract/MCOAbstractMultipart.mm",
    "src/objc/abstract/MCOAbstractPart.mm",
    "src/objc/abstract/MCOAddress.mm",
    "src/objc/abstract/MCOMessageHeader.mm",
    "src/objc/abstract/MCOAbstractMessageRendererCallback.mm",
    "src/objc/imap/MCOIMAPSession.mm",
    "src/objc/imap/MCOIMAPFolder.mm",
    "src/objc/imap/MCOIMAPMessage.mm",
    "src/objc/imap/MCOIMAPMessagePart.mm",
    "src/objc/imap/MCOIMAPMultipart.mm",
    "src/objc/imap/MCOIMAPNamespace.mm",
    "src/objc/imap/MCOIMAPNamespaceItem.mm",
    "src/objc/imap/MCOIMAPPart.mm",
    "src/objc/imap/MCOIMAPFolderInfo.mm",
    "src/objc/imap/MCOIMAPFetchFoldersOperation.mm",
    "src/objc/imap/MCOIMAPOperation.mm",
    "src/objc/imap/MCOIMAPFolderInfoOperation.mm",
    "src/objc/imap/MCOIMAPBaseOperation.mm",
    "src/objc/imap/MCOIMAPAppendMessageOperation.mm",
    "src/objc/imap/MCOIMAPCopyMessagesOperation.mm",
    "src/objc/imap/MCOIMAPMoveMessagesOperation.mm",
    "src/objc/imap/MCOIMAPFetchMessagesOperation.mm",
    "src/objc/imap/MCOIMAPFetchContentOperation.mm",
    "src/objc/imap/MCOIMAPFetchContentToFileOperation.mm",
    "src/objc/imap/MCOIMAPFetchParsedContentOperation.mm",
    "src/objc/imap/MCOIMAPSearchOperation.mm",
    "src/objc/imap/MCOIMAPIdleOperation.mm",
    "src/objc/imap/MCOIMAPFetchNamespaceOperation.mm",
    "src/objc/imap/MCOIMAPIdentityOperation.mm",
    "src/objc/imap/MCOIMAPCapabilityOperation.mm",
    "src/objc/imap/MCOIMAPQuotaOperation.mm",
    "src/objc/imap/MCOIMAPSearchExpression.mm",
    "src/objc/imap/MCOIMAPFolderStatus.mm",
    "src/objc/imap/MCOIMAPFolderStatusOperation.mm",
    "src/objc/imap/MCOIMAPMessageRenderingOperation.mm",
    "src/objc/imap/MCOIMAPNoopOperation.mm",
    "src/objc/imap/MCOIMAPIdentity.mm",
    "src/objc/imap/MCOIMAPMultiDisconnectOperation.mm",
    "src/objc/imap/MCOIMAPCustomCommandOperation.mm",
    "src/objc/imap/MCOIMAPCheckAccountOperation.mm",
    "src/objc/rfc822/MCOAttachment.mm",
    "src/objc/rfc822/MCOMessageBuilder.mm",
    "src/objc/rfc822/MCOMessageParser.mm",
    "src/objc/rfc822/MCOMessagePart.mm",
    "src/objc/rfc822/MCOMultipart.mm",
    "src/objc/utils/MCOObjectWrapper.mm",
    "src/objc/utils/MCOOperation.mm",
    "src/objc/utils/NSArray+MCO.mm",
    "src/objc/utils/NSData+MCO.mm",
    "src/objc/utils/NSDictionary+MCO.mm",
    "src/objc/utils/NSError+MCO.mm",
    "src/objc/utils/NSObject+MCO.mm",
    "src/objc/utils/NSString+MCO.mm",
    "src/objc/utils/NSValue+MCO.mm",
    "src/objc/utils/MCOIndexSet.mm",
    "src/objc/utils/MCORange.mm",
    "src/objc/utils/NSSet+MCO.mm",
    "src/objc/provider/MCOAccountValidator.mm",
    "src/objc/provider/MCOMailProvider.mm",
    "src/objc/provider/MCOMailProvidersManager.mm",
    "src/objc/provider/MCONetService.mm",
    "src/core/zip/MCZipMac.mm",
    "src/core/basetypes/MCAutoreleasePoolMac.mm",
    "src/core/basetypes/MCDataMac.mm",
    "src/core/basetypes/MCMainThreadMac.mm",
    "src/core/basetypes/MCObjectMac.mm",
    "src/core/rfc822/MCMessageParserMac.mm",
]

// MARK: Package
let package = Package(
    name: "MailCore2",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v12), .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "MailCore2"),
    ],
    dependencies: [
        .package(url: "https://github.com/jsflax/libetpan/", branch: "master"),
        .package(url: "https://github.com/jsflax/tidy-html5/", branch: "master"),
        .package(url: "https://github.com/jsflax/ctemplate/", branch: "master")
    ],
    targets: [
         .binaryTarget(name: "MailCore2",
                      url: "https://github.com/mattmaddux/mailcore2/raw/master/bin/MailCore2-2020-09-24.xcframework.zip",
                      checksum: "c3479968c758094165fb0b4de5ca7dd9f8aafac423388c51406c447f69a1b853")
    ]
)
