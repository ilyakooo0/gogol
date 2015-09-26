{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.APIsDiscoveryService.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.APIsDiscoveryService.Types.Product where

import           Network.Google.APIsDiscoveryService.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'directoryList' smart constructor.
data DirectoryList = DirectoryList
    { _dlKind             :: !Text
    , _dlItems            :: !(Maybe [DirectoryListItemItems])
    , _dlDiscoveryVersion :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectoryList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlKind'
--
-- * 'dlItems'
--
-- * 'dlDiscoveryVersion'
directoryList
    :: DirectoryList
directoryList =
    DirectoryList
    { _dlKind = "discovery#directoryList"
    , _dlItems = Nothing
    , _dlDiscoveryVersion = "v1"
    }

-- | The kind for this response.
dlKind :: Lens' DirectoryList Text
dlKind = lens _dlKind (\ s a -> s{_dlKind = a})

-- | The individual directory entries. One entry per api\/version pair.
dlItems :: Lens' DirectoryList [DirectoryListItemItems]
dlItems
  = lens _dlItems (\ s a -> s{_dlItems = a}) . _Default
      . _Coerce

-- | Indicate the version of the Discovery API used to generate this doc.
dlDiscoveryVersion :: Lens' DirectoryList Text
dlDiscoveryVersion
  = lens _dlDiscoveryVersion
      (\ s a -> s{_dlDiscoveryVersion = a})

-- | Links to 16x16 and 32x32 icons representing the API.
--
-- /See:/ 'directoryListIconsItemItems' smart constructor.
data DirectoryListIconsItemItems = DirectoryListIconsItemItems
    { _dliiiX16 :: !(Maybe Text)
    , _dliiiX32 :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectoryListIconsItemItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dliiiX16'
--
-- * 'dliiiX32'
directoryListIconsItemItems
    :: DirectoryListIconsItemItems
directoryListIconsItemItems =
    DirectoryListIconsItemItems
    { _dliiiX16 = Nothing
    , _dliiiX32 = Nothing
    }

-- | The URL of the 16x16 icon.
dliiiX16 :: Lens' DirectoryListIconsItemItems (Maybe Text)
dliiiX16 = lens _dliiiX16 (\ s a -> s{_dliiiX16 = a})

-- | The URL of the 32x32 icon.
dliiiX32 :: Lens' DirectoryListIconsItemItems (Maybe Text)
dliiiX32 = lens _dliiiX32 (\ s a -> s{_dliiiX32 = a})

--
-- /See:/ 'directoryListItemItems' smart constructor.
data DirectoryListItemItems = DirectoryListItemItems
    { _dliiDiscoveryLink     :: !(Maybe Text)
    , _dliiPreferred         :: !(Maybe Bool)
    , _dliiKind              :: !Text
    , _dliiIcons             :: !(Maybe DirectoryListIconsItemItems)
    , _dliiName              :: !(Maybe Text)
    , _dliiVersion           :: !(Maybe Text)
    , _dliiDocumentationLink :: !(Maybe Text)
    , _dliiId                :: !(Maybe Text)
    , _dliiLabels            :: !(Maybe [Text])
    , _dliiTitle             :: !(Maybe Text)
    , _dliiDescription       :: !(Maybe Text)
    , _dliiDiscoveryRestUrl  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectoryListItemItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dliiDiscoveryLink'
--
-- * 'dliiPreferred'
--
-- * 'dliiKind'
--
-- * 'dliiIcons'
--
-- * 'dliiName'
--
-- * 'dliiVersion'
--
-- * 'dliiDocumentationLink'
--
-- * 'dliiId'
--
-- * 'dliiLabels'
--
-- * 'dliiTitle'
--
-- * 'dliiDescription'
--
-- * 'dliiDiscoveryRestUrl'
directoryListItemItems
    :: DirectoryListItemItems
directoryListItemItems =
    DirectoryListItemItems
    { _dliiDiscoveryLink = Nothing
    , _dliiPreferred = Nothing
    , _dliiKind = "discovery#directoryItem"
    , _dliiIcons = Nothing
    , _dliiName = Nothing
    , _dliiVersion = Nothing
    , _dliiDocumentationLink = Nothing
    , _dliiId = Nothing
    , _dliiLabels = Nothing
    , _dliiTitle = Nothing
    , _dliiDescription = Nothing
    , _dliiDiscoveryRestUrl = Nothing
    }

-- | A link to the discovery document.
dliiDiscoveryLink :: Lens' DirectoryListItemItems (Maybe Text)
dliiDiscoveryLink
  = lens _dliiDiscoveryLink
      (\ s a -> s{_dliiDiscoveryLink = a})

-- | True if this version is the preferred version to use.
dliiPreferred :: Lens' DirectoryListItemItems (Maybe Bool)
dliiPreferred
  = lens _dliiPreferred
      (\ s a -> s{_dliiPreferred = a})

-- | The kind for this response.
dliiKind :: Lens' DirectoryListItemItems Text
dliiKind = lens _dliiKind (\ s a -> s{_dliiKind = a})

-- | Links to 16x16 and 32x32 icons representing the API.
dliiIcons :: Lens' DirectoryListItemItems (Maybe DirectoryListIconsItemItems)
dliiIcons
  = lens _dliiIcons (\ s a -> s{_dliiIcons = a})

-- | The name of the API.
dliiName :: Lens' DirectoryListItemItems (Maybe Text)
dliiName = lens _dliiName (\ s a -> s{_dliiName = a})

-- | The version of the API.
dliiVersion :: Lens' DirectoryListItemItems (Maybe Text)
dliiVersion
  = lens _dliiVersion (\ s a -> s{_dliiVersion = a})

-- | A link to human readable documentation for the API.
dliiDocumentationLink :: Lens' DirectoryListItemItems (Maybe Text)
dliiDocumentationLink
  = lens _dliiDocumentationLink
      (\ s a -> s{_dliiDocumentationLink = a})

-- | The id of this API.
dliiId :: Lens' DirectoryListItemItems (Maybe Text)
dliiId = lens _dliiId (\ s a -> s{_dliiId = a})

-- | Labels for the status of this API, such as labs or deprecated.
dliiLabels :: Lens' DirectoryListItemItems [Text]
dliiLabels
  = lens _dliiLabels (\ s a -> s{_dliiLabels = a}) .
      _Default
      . _Coerce

-- | The title of this API.
dliiTitle :: Lens' DirectoryListItemItems (Maybe Text)
dliiTitle
  = lens _dliiTitle (\ s a -> s{_dliiTitle = a})

-- | The description of this API.
dliiDescription :: Lens' DirectoryListItemItems (Maybe Text)
dliiDescription
  = lens _dliiDescription
      (\ s a -> s{_dliiDescription = a})

-- | The URL for the discovery REST document.
dliiDiscoveryRestUrl :: Lens' DirectoryListItemItems (Maybe Text)
dliiDiscoveryRestUrl
  = lens _dliiDiscoveryRestUrl
      (\ s a -> s{_dliiDiscoveryRestUrl = a})

--
-- /See:/ 'jsonSchema' smart constructor.
data JsonSchema = JsonSchema
    { _jsAnnotations          :: !(Maybe JsonSchemaAnnotations)
    , _jsVariant              :: !(Maybe JsonSchemaVariant)
    , _jsLocation             :: !(Maybe Text)
    , _jsRef                  :: !(Maybe Text)
    , _jsPattern              :: !(Maybe Text)
    , _jsMaximum              :: !(Maybe Text)
    , _jsDefault              :: !(Maybe Text)
    , _jsFormat               :: !(Maybe Text)
    , _jsItems                :: !(Maybe (Maybe JsonSchema))
    , _jsMinimum              :: !(Maybe Text)
    , _jsRequired             :: !(Maybe Bool)
    , _jsId                   :: !(Maybe Text)
    , _jsAdditionalProperties :: !(Maybe (Maybe JsonSchema))
    , _jsType                 :: !(Maybe Text)
    , _jsEnum                 :: !(Maybe [Text])
    , _jsRepeated             :: !(Maybe Bool)
    , _jsReadOnly             :: !(Maybe Bool)
    , _jsEnumDescriptions     :: !(Maybe [Text])
    , _jsDescription          :: !(Maybe Text)
    , _jsProperties           :: !(Maybe JsonSchemaProperties)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JsonSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsAnnotations'
--
-- * 'jsVariant'
--
-- * 'jsLocation'
--
-- * 'jsRef'
--
-- * 'jsPattern'
--
-- * 'jsMaximum'
--
-- * 'jsDefault'
--
-- * 'jsFormat'
--
-- * 'jsItems'
--
-- * 'jsMinimum'
--
-- * 'jsRequired'
--
-- * 'jsId'
--
-- * 'jsAdditionalProperties'
--
-- * 'jsType'
--
-- * 'jsEnum'
--
-- * 'jsRepeated'
--
-- * 'jsReadOnly'
--
-- * 'jsEnumDescriptions'
--
-- * 'jsDescription'
--
-- * 'jsProperties'
jsonSchema
    :: JsonSchema
jsonSchema =
    JsonSchema
    { _jsAnnotations = Nothing
    , _jsVariant = Nothing
    , _jsLocation = Nothing
    , _jsRef = Nothing
    , _jsPattern = Nothing
    , _jsMaximum = Nothing
    , _jsDefault = Nothing
    , _jsFormat = Nothing
    , _jsItems = Nothing
    , _jsMinimum = Nothing
    , _jsRequired = Nothing
    , _jsId = Nothing
    , _jsAdditionalProperties = Nothing
    , _jsType = Nothing
    , _jsEnum = Nothing
    , _jsRepeated = Nothing
    , _jsReadOnly = Nothing
    , _jsEnumDescriptions = Nothing
    , _jsDescription = Nothing
    , _jsProperties = Nothing
    }

-- | Additional information about this property.
jsAnnotations :: Lens' JsonSchema (Maybe JsonSchemaAnnotations)
jsAnnotations
  = lens _jsAnnotations
      (\ s a -> s{_jsAnnotations = a})

-- | In a variant data type, the value of one property is used to determine
-- how to interpret the entire entity. Its value must exist in a map of
-- descriminant values to schema names.
jsVariant :: Lens' JsonSchema (Maybe JsonSchemaVariant)
jsVariant
  = lens _jsVariant (\ s a -> s{_jsVariant = a})

-- | Whether this parameter goes in the query or the path for REST requests.
jsLocation :: Lens' JsonSchema (Maybe Text)
jsLocation
  = lens _jsLocation (\ s a -> s{_jsLocation = a})

-- | A reference to another schema. The value of this property is the \"id\"
-- of another schema.
jsRef :: Lens' JsonSchema (Maybe Text)
jsRef = lens _jsRef (\ s a -> s{_jsRef = a})

-- | The regular expression this parameter must conform to. Uses Java 6 regex
-- format:
-- http:\/\/docs.oracle.com\/javase\/6\/docs\/api\/java\/util\/regex\/Pattern.html
jsPattern :: Lens' JsonSchema (Maybe Text)
jsPattern
  = lens _jsPattern (\ s a -> s{_jsPattern = a})

-- | The maximum value of this parameter.
jsMaximum :: Lens' JsonSchema (Maybe Text)
jsMaximum
  = lens _jsMaximum (\ s a -> s{_jsMaximum = a})

-- | The default value of this property (if one exists).
jsDefault :: Lens' JsonSchema (Maybe Text)
jsDefault
  = lens _jsDefault (\ s a -> s{_jsDefault = a})

-- | An additional regular expression or key that helps constrain the value.
-- For more details see:
-- http:\/\/tools.ietf.org\/html\/draft-zyp-json-schema-03#section-5.23
jsFormat :: Lens' JsonSchema (Maybe Text)
jsFormat = lens _jsFormat (\ s a -> s{_jsFormat = a})

-- | If this is a schema for an array, this property is the schema for each
-- element in the array.
jsItems :: Lens' JsonSchema (Maybe (Maybe JsonSchema))
jsItems = lens _jsItems (\ s a -> s{_jsItems = a})

-- | The minimum value of this parameter.
jsMinimum :: Lens' JsonSchema (Maybe Text)
jsMinimum
  = lens _jsMinimum (\ s a -> s{_jsMinimum = a})

-- | Whether the parameter is required.
jsRequired :: Lens' JsonSchema (Maybe Bool)
jsRequired
  = lens _jsRequired (\ s a -> s{_jsRequired = a})

-- | Unique identifier for this schema.
jsId :: Lens' JsonSchema (Maybe Text)
jsId = lens _jsId (\ s a -> s{_jsId = a})

-- | If this is a schema for an object, this property is the schema for any
-- additional properties with dynamic keys on this object.
jsAdditionalProperties :: Lens' JsonSchema (Maybe (Maybe JsonSchema))
jsAdditionalProperties
  = lens _jsAdditionalProperties
      (\ s a -> s{_jsAdditionalProperties = a})

-- | The value type for this schema. A list of values can be found here:
-- http:\/\/tools.ietf.org\/html\/draft-zyp-json-schema-03#section-5.1
jsType :: Lens' JsonSchema (Maybe Text)
jsType = lens _jsType (\ s a -> s{_jsType = a})

-- | Values this parameter may take (if it is an enum).
jsEnum :: Lens' JsonSchema [Text]
jsEnum
  = lens _jsEnum (\ s a -> s{_jsEnum = a}) . _Default .
      _Coerce

-- | Whether this parameter may appear multiple times.
jsRepeated :: Lens' JsonSchema (Maybe Bool)
jsRepeated
  = lens _jsRepeated (\ s a -> s{_jsRepeated = a})

-- | The value is read-only, generated by the service. The value cannot be
-- modified by the client. If the value is included in a POST, PUT, or
-- PATCH request, it is ignored by the service.
jsReadOnly :: Lens' JsonSchema (Maybe Bool)
jsReadOnly
  = lens _jsReadOnly (\ s a -> s{_jsReadOnly = a})

-- | The descriptions for the enums. Each position maps to the corresponding
-- value in the \"enum\" array.
jsEnumDescriptions :: Lens' JsonSchema [Text]
jsEnumDescriptions
  = lens _jsEnumDescriptions
      (\ s a -> s{_jsEnumDescriptions = a})
      . _Default
      . _Coerce

-- | A description of this object.
jsDescription :: Lens' JsonSchema (Maybe Text)
jsDescription
  = lens _jsDescription
      (\ s a -> s{_jsDescription = a})

-- | If this is a schema for an object, list the schema for each property of
-- this object.
jsProperties :: Lens' JsonSchema (Maybe JsonSchemaProperties)
jsProperties
  = lens _jsProperties (\ s a -> s{_jsProperties = a})

-- | Additional information about this property.
--
-- /See:/ 'jsonSchemaAnnotations' smart constructor.
newtype JsonSchemaAnnotations = JsonSchemaAnnotations
    { _jsaRequired :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JsonSchemaAnnotations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsaRequired'
jsonSchemaAnnotations
    :: JsonSchemaAnnotations
jsonSchemaAnnotations =
    JsonSchemaAnnotations
    { _jsaRequired = Nothing
    }

-- | A list of methods for which this property is required on requests.
jsaRequired :: Lens' JsonSchemaAnnotations [Text]
jsaRequired
  = lens _jsaRequired (\ s a -> s{_jsaRequired = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'jsonSchemaItemMapVariant' smart constructor.
data JsonSchemaItemMapVariant = JsonSchemaItemMapVariant
    { _jsimvRef       :: !(Maybe Text)
    , _jsimvTypeValue :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JsonSchemaItemMapVariant' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsimvRef'
--
-- * 'jsimvTypeValue'
jsonSchemaItemMapVariant
    :: JsonSchemaItemMapVariant
jsonSchemaItemMapVariant =
    JsonSchemaItemMapVariant
    { _jsimvRef = Nothing
    , _jsimvTypeValue = Nothing
    }

jsimvRef :: Lens' JsonSchemaItemMapVariant (Maybe Text)
jsimvRef = lens _jsimvRef (\ s a -> s{_jsimvRef = a})

jsimvTypeValue :: Lens' JsonSchemaItemMapVariant (Maybe Text)
jsimvTypeValue
  = lens _jsimvTypeValue
      (\ s a -> s{_jsimvTypeValue = a})

-- | If this is a schema for an object, list the schema for each property of
-- this object.
--
-- /See:/ 'jsonSchemaProperties' smart constructor.
data JsonSchemaProperties =
    JsonSchemaProperties
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JsonSchemaProperties' with the minimum fields required to make a request.
--
jsonSchemaProperties
    :: JsonSchemaProperties
jsonSchemaProperties = JsonSchemaProperties

-- | In a variant data type, the value of one property is used to determine
-- how to interpret the entire entity. Its value must exist in a map of
-- descriminant values to schema names.
--
-- /See:/ 'jsonSchemaVariant' smart constructor.
data JsonSchemaVariant = JsonSchemaVariant
    { _jsvDiscriminant :: !(Maybe Text)
    , _jsvMap          :: !(Maybe [JsonSchemaItemMapVariant])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JsonSchemaVariant' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsvDiscriminant'
--
-- * 'jsvMap'
jsonSchemaVariant
    :: JsonSchemaVariant
jsonSchemaVariant =
    JsonSchemaVariant
    { _jsvDiscriminant = Nothing
    , _jsvMap = Nothing
    }

-- | The name of the type discriminant property.
jsvDiscriminant :: Lens' JsonSchemaVariant (Maybe Text)
jsvDiscriminant
  = lens _jsvDiscriminant
      (\ s a -> s{_jsvDiscriminant = a})

-- | The map of discriminant value to schema to use for parsing..
jsvMap :: Lens' JsonSchemaVariant [JsonSchemaItemMapVariant]
jsvMap
  = lens _jsvMap (\ s a -> s{_jsvMap = a}) . _Default .
      _Coerce

--
-- /See:/ 'restDescription' smart constructor.
data RestDescription = RestDescription
    { _rdEtag                      :: !(Maybe Text)
    , _rdSchemas                   :: !(Maybe RestDescriptionSchemas)
    , _rdServicePath               :: !(Maybe Text)
    , _rdBasePath                  :: !(Maybe Text)
    , _rdKind                      :: !Text
    , _rdExponentialBackoffDefault :: !(Maybe Bool)
    , _rdAuth                      :: !(Maybe RestDescriptionAuth)
    , _rdIcons                     :: !(Maybe RestDescriptionIcons)
    , _rdBaseUrl                   :: !(Maybe Text)
    , _rdProtocol                  :: !Text
    , _rdOwnerName                 :: !(Maybe Text)
    , _rdResources                 :: !(Maybe RestDescriptionResources)
    , _rdOwnerDomain               :: !(Maybe Text)
    , _rdBatchPath                 :: !Text
    , _rdMethods                   :: !(Maybe RestDescriptionMethods)
    , _rdName                      :: !(Maybe Text)
    , _rdPackagePath               :: !(Maybe Text)
    , _rdFeatures                  :: !(Maybe [Text])
    , _rdVersion                   :: !(Maybe Text)
    , _rdParameters                :: !(Maybe RestDescriptionParameters)
    , _rdDocumentationLink         :: !(Maybe Text)
    , _rdRootUrl                   :: !(Maybe Text)
    , _rdId                        :: !(Maybe Text)
    , _rdCanonicalName             :: !(Maybe Text)
    , _rdLabels                    :: !(Maybe [Text])
    , _rdDiscoveryVersion          :: !Text
    , _rdTitle                     :: !(Maybe Text)
    , _rdRevision                  :: !(Maybe Text)
    , _rdDescription               :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdEtag'
--
-- * 'rdSchemas'
--
-- * 'rdServicePath'
--
-- * 'rdBasePath'
--
-- * 'rdKind'
--
-- * 'rdExponentialBackoffDefault'
--
-- * 'rdAuth'
--
-- * 'rdIcons'
--
-- * 'rdBaseUrl'
--
-- * 'rdProtocol'
--
-- * 'rdOwnerName'
--
-- * 'rdResources'
--
-- * 'rdOwnerDomain'
--
-- * 'rdBatchPath'
--
-- * 'rdMethods'
--
-- * 'rdName'
--
-- * 'rdPackagePath'
--
-- * 'rdFeatures'
--
-- * 'rdVersion'
--
-- * 'rdParameters'
--
-- * 'rdDocumentationLink'
--
-- * 'rdRootUrl'
--
-- * 'rdId'
--
-- * 'rdCanonicalName'
--
-- * 'rdLabels'
--
-- * 'rdDiscoveryVersion'
--
-- * 'rdTitle'
--
-- * 'rdRevision'
--
-- * 'rdDescription'
restDescription
    :: RestDescription
restDescription =
    RestDescription
    { _rdEtag = Nothing
    , _rdSchemas = Nothing
    , _rdServicePath = Nothing
    , _rdBasePath = Nothing
    , _rdKind = "discovery#restDescription"
    , _rdExponentialBackoffDefault = Nothing
    , _rdAuth = Nothing
    , _rdIcons = Nothing
    , _rdBaseUrl = Nothing
    , _rdProtocol = "rest"
    , _rdOwnerName = Nothing
    , _rdResources = Nothing
    , _rdOwnerDomain = Nothing
    , _rdBatchPath = "batch"
    , _rdMethods = Nothing
    , _rdName = Nothing
    , _rdPackagePath = Nothing
    , _rdFeatures = Nothing
    , _rdVersion = Nothing
    , _rdParameters = Nothing
    , _rdDocumentationLink = Nothing
    , _rdRootUrl = Nothing
    , _rdId = Nothing
    , _rdCanonicalName = Nothing
    , _rdLabels = Nothing
    , _rdDiscoveryVersion = "v1"
    , _rdTitle = Nothing
    , _rdRevision = Nothing
    , _rdDescription = Nothing
    }

-- | The ETag for this response.
rdEtag :: Lens' RestDescription (Maybe Text)
rdEtag = lens _rdEtag (\ s a -> s{_rdEtag = a})

-- | The schemas for this API.
rdSchemas :: Lens' RestDescription (Maybe RestDescriptionSchemas)
rdSchemas
  = lens _rdSchemas (\ s a -> s{_rdSchemas = a})

-- | The base path for all REST requests.
rdServicePath :: Lens' RestDescription (Maybe Text)
rdServicePath
  = lens _rdServicePath
      (\ s a -> s{_rdServicePath = a})

-- | [DEPRECATED] The base path for REST requests.
rdBasePath :: Lens' RestDescription (Maybe Text)
rdBasePath
  = lens _rdBasePath (\ s a -> s{_rdBasePath = a})

-- | The kind for this response.
rdKind :: Lens' RestDescription Text
rdKind = lens _rdKind (\ s a -> s{_rdKind = a})

-- | Enable exponential backoff for suitable methods in the generated
-- clients.
rdExponentialBackoffDefault :: Lens' RestDescription (Maybe Bool)
rdExponentialBackoffDefault
  = lens _rdExponentialBackoffDefault
      (\ s a -> s{_rdExponentialBackoffDefault = a})

-- | Authentication information.
rdAuth :: Lens' RestDescription (Maybe RestDescriptionAuth)
rdAuth = lens _rdAuth (\ s a -> s{_rdAuth = a})

-- | Links to 16x16 and 32x32 icons representing the API.
rdIcons :: Lens' RestDescription (Maybe RestDescriptionIcons)
rdIcons = lens _rdIcons (\ s a -> s{_rdIcons = a})

-- | [DEPRECATED] The base URL for REST requests.
rdBaseUrl :: Lens' RestDescription (Maybe Text)
rdBaseUrl
  = lens _rdBaseUrl (\ s a -> s{_rdBaseUrl = a})

-- | The protocol described by this document.
rdProtocol :: Lens' RestDescription Text
rdProtocol
  = lens _rdProtocol (\ s a -> s{_rdProtocol = a})

-- | The name of the owner of this API. See ownerDomain.
rdOwnerName :: Lens' RestDescription (Maybe Text)
rdOwnerName
  = lens _rdOwnerName (\ s a -> s{_rdOwnerName = a})

-- | The resources in this API.
rdResources :: Lens' RestDescription (Maybe RestDescriptionResources)
rdResources
  = lens _rdResources (\ s a -> s{_rdResources = a})

-- | The domain of the owner of this API. Together with the ownerName and a
-- packagePath values, this can be used to generate a library for this API
-- which would have a unique fully qualified name.
rdOwnerDomain :: Lens' RestDescription (Maybe Text)
rdOwnerDomain
  = lens _rdOwnerDomain
      (\ s a -> s{_rdOwnerDomain = a})

-- | The path for REST batch requests.
rdBatchPath :: Lens' RestDescription Text
rdBatchPath
  = lens _rdBatchPath (\ s a -> s{_rdBatchPath = a})

-- | API-level methods for this API.
rdMethods :: Lens' RestDescription (Maybe RestDescriptionMethods)
rdMethods
  = lens _rdMethods (\ s a -> s{_rdMethods = a})

-- | The name of this API.
rdName :: Lens' RestDescription (Maybe Text)
rdName = lens _rdName (\ s a -> s{_rdName = a})

-- | The package of the owner of this API. See ownerDomain.
rdPackagePath :: Lens' RestDescription (Maybe Text)
rdPackagePath
  = lens _rdPackagePath
      (\ s a -> s{_rdPackagePath = a})

-- | A list of supported features for this API.
rdFeatures :: Lens' RestDescription [Text]
rdFeatures
  = lens _rdFeatures (\ s a -> s{_rdFeatures = a}) .
      _Default
      . _Coerce

-- | The version of this API.
rdVersion :: Lens' RestDescription (Maybe Text)
rdVersion
  = lens _rdVersion (\ s a -> s{_rdVersion = a})

-- | Common parameters that apply across all apis.
rdParameters :: Lens' RestDescription (Maybe RestDescriptionParameters)
rdParameters
  = lens _rdParameters (\ s a -> s{_rdParameters = a})

-- | A link to human readable documentation for the API.
rdDocumentationLink :: Lens' RestDescription (Maybe Text)
rdDocumentationLink
  = lens _rdDocumentationLink
      (\ s a -> s{_rdDocumentationLink = a})

-- | The root URL under which all API services live.
rdRootUrl :: Lens' RestDescription (Maybe Text)
rdRootUrl
  = lens _rdRootUrl (\ s a -> s{_rdRootUrl = a})

-- | The ID of this API.
rdId :: Lens' RestDescription (Maybe Text)
rdId = lens _rdId (\ s a -> s{_rdId = a})

-- | Indicates how the API name should be capitalized and split into various
-- parts. Useful for generating pretty class names.
rdCanonicalName :: Lens' RestDescription (Maybe Text)
rdCanonicalName
  = lens _rdCanonicalName
      (\ s a -> s{_rdCanonicalName = a})

-- | Labels for the status of this API, such as labs or deprecated.
rdLabels :: Lens' RestDescription [Text]
rdLabels
  = lens _rdLabels (\ s a -> s{_rdLabels = a}) .
      _Default
      . _Coerce

-- | Indicate the version of the Discovery API used to generate this doc.
rdDiscoveryVersion :: Lens' RestDescription Text
rdDiscoveryVersion
  = lens _rdDiscoveryVersion
      (\ s a -> s{_rdDiscoveryVersion = a})

-- | The title of this API.
rdTitle :: Lens' RestDescription (Maybe Text)
rdTitle = lens _rdTitle (\ s a -> s{_rdTitle = a})

-- | The version of this API.
rdRevision :: Lens' RestDescription (Maybe Text)
rdRevision
  = lens _rdRevision (\ s a -> s{_rdRevision = a})

-- | The description of this API.
rdDescription :: Lens' RestDescription (Maybe Text)
rdDescription
  = lens _rdDescription
      (\ s a -> s{_rdDescription = a})

-- | Authentication information.
--
-- /See:/ 'restDescriptionAuth' smart constructor.
newtype RestDescriptionAuth = RestDescriptionAuth
    { _rdaOauth2 :: Maybe RestDescriptionOauth2Auth
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescriptionAuth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdaOauth2'
restDescriptionAuth
    :: RestDescriptionAuth
restDescriptionAuth =
    RestDescriptionAuth
    { _rdaOauth2 = Nothing
    }

-- | OAuth 2.0 authentication information.
rdaOauth2 :: Lens' RestDescriptionAuth (Maybe RestDescriptionOauth2Auth)
rdaOauth2
  = lens _rdaOauth2 (\ s a -> s{_rdaOauth2 = a})

-- | Links to 16x16 and 32x32 icons representing the API.
--
-- /See:/ 'restDescriptionIcons' smart constructor.
data RestDescriptionIcons = RestDescriptionIcons
    { _rdiX16 :: !(Maybe Text)
    , _rdiX32 :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescriptionIcons' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdiX16'
--
-- * 'rdiX32'
restDescriptionIcons
    :: RestDescriptionIcons
restDescriptionIcons =
    RestDescriptionIcons
    { _rdiX16 = Nothing
    , _rdiX32 = Nothing
    }

-- | The URL of the 16x16 icon.
rdiX16 :: Lens' RestDescriptionIcons (Maybe Text)
rdiX16 = lens _rdiX16 (\ s a -> s{_rdiX16 = a})

-- | The URL of the 32x32 icon.
rdiX32 :: Lens' RestDescriptionIcons (Maybe Text)
rdiX32 = lens _rdiX32 (\ s a -> s{_rdiX32 = a})

-- | API-level methods for this API.
--
-- /See:/ 'restDescriptionMethods' smart constructor.
data RestDescriptionMethods =
    RestDescriptionMethods
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescriptionMethods' with the minimum fields required to make a request.
--
restDescriptionMethods
    :: RestDescriptionMethods
restDescriptionMethods = RestDescriptionMethods

-- | OAuth 2.0 authentication information.
--
-- /See:/ 'restDescriptionOauth2Auth' smart constructor.
newtype RestDescriptionOauth2Auth = RestDescriptionOauth2Auth
    { _rdoaScopes :: Maybe RestDescriptionScopesOauth2Auth
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescriptionOauth2Auth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdoaScopes'
restDescriptionOauth2Auth
    :: RestDescriptionOauth2Auth
restDescriptionOauth2Auth =
    RestDescriptionOauth2Auth
    { _rdoaScopes = Nothing
    }

-- | Available OAuth 2.0 scopes.
rdoaScopes :: Lens' RestDescriptionOauth2Auth (Maybe RestDescriptionScopesOauth2Auth)
rdoaScopes
  = lens _rdoaScopes (\ s a -> s{_rdoaScopes = a})

-- | Common parameters that apply across all apis.
--
-- /See:/ 'restDescriptionParameters' smart constructor.
data RestDescriptionParameters =
    RestDescriptionParameters
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescriptionParameters' with the minimum fields required to make a request.
--
restDescriptionParameters
    :: RestDescriptionParameters
restDescriptionParameters = RestDescriptionParameters

-- | The resources in this API.
--
-- /See:/ 'restDescriptionResources' smart constructor.
data RestDescriptionResources =
    RestDescriptionResources
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescriptionResources' with the minimum fields required to make a request.
--
restDescriptionResources
    :: RestDescriptionResources
restDescriptionResources = RestDescriptionResources

-- | The schemas for this API.
--
-- /See:/ 'restDescriptionSchemas' smart constructor.
data RestDescriptionSchemas =
    RestDescriptionSchemas
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescriptionSchemas' with the minimum fields required to make a request.
--
restDescriptionSchemas
    :: RestDescriptionSchemas
restDescriptionSchemas = RestDescriptionSchemas

-- | Available OAuth 2.0 scopes.
--
-- /See:/ 'restDescriptionScopesOauth2Auth' smart constructor.
data RestDescriptionScopesOauth2Auth =
    RestDescriptionScopesOauth2Auth
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescriptionScopesOauth2Auth' with the minimum fields required to make a request.
--
restDescriptionScopesOauth2Auth
    :: RestDescriptionScopesOauth2Auth
restDescriptionScopesOauth2Auth = RestDescriptionScopesOauth2Auth

--
-- /See:/ 'restMethod' smart constructor.
data RestMethod = RestMethod
    { _rmSupportsMediaDownload   :: !(Maybe Bool)
    , _rmParameterOrder          :: !(Maybe [Text])
    , _rmMediaUpload             :: !(Maybe RestMethodMediaUpload)
    , _rmHttpMethod              :: !(Maybe Text)
    , _rmPath                    :: !(Maybe Text)
    , _rmResponse                :: !(Maybe RestMethodResponse)
    , _rmSupportsMediaUpload     :: !(Maybe Bool)
    , _rmScopes                  :: !(Maybe [Text])
    , _rmSupportsSubscription    :: !(Maybe Bool)
    , _rmParameters              :: !(Maybe RestMethodParameters)
    , _rmId                      :: !(Maybe Text)
    , _rmEtagRequired            :: !(Maybe Bool)
    , _rmUseMediaDownloadService :: !(Maybe Bool)
    , _rmDescription             :: !(Maybe Text)
    , _rmRequest                 :: !(Maybe RestMethodRequest)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestMethod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmSupportsMediaDownload'
--
-- * 'rmParameterOrder'
--
-- * 'rmMediaUpload'
--
-- * 'rmHttpMethod'
--
-- * 'rmPath'
--
-- * 'rmResponse'
--
-- * 'rmSupportsMediaUpload'
--
-- * 'rmScopes'
--
-- * 'rmSupportsSubscription'
--
-- * 'rmParameters'
--
-- * 'rmId'
--
-- * 'rmEtagRequired'
--
-- * 'rmUseMediaDownloadService'
--
-- * 'rmDescription'
--
-- * 'rmRequest'
restMethod
    :: RestMethod
restMethod =
    RestMethod
    { _rmSupportsMediaDownload = Nothing
    , _rmParameterOrder = Nothing
    , _rmMediaUpload = Nothing
    , _rmHttpMethod = Nothing
    , _rmPath = Nothing
    , _rmResponse = Nothing
    , _rmSupportsMediaUpload = Nothing
    , _rmScopes = Nothing
    , _rmSupportsSubscription = Nothing
    , _rmParameters = Nothing
    , _rmId = Nothing
    , _rmEtagRequired = Nothing
    , _rmUseMediaDownloadService = Nothing
    , _rmDescription = Nothing
    , _rmRequest = Nothing
    }

-- | Whether this method supports media downloads.
rmSupportsMediaDownload :: Lens' RestMethod (Maybe Bool)
rmSupportsMediaDownload
  = lens _rmSupportsMediaDownload
      (\ s a -> s{_rmSupportsMediaDownload = a})

-- | Ordered list of required parameters, serves as a hint to clients on how
-- to structure their method signatures. The array is ordered such that the
-- \"most-significant\" parameter appears first.
rmParameterOrder :: Lens' RestMethod [Text]
rmParameterOrder
  = lens _rmParameterOrder
      (\ s a -> s{_rmParameterOrder = a})
      . _Default
      . _Coerce

-- | Media upload parameters.
rmMediaUpload :: Lens' RestMethod (Maybe RestMethodMediaUpload)
rmMediaUpload
  = lens _rmMediaUpload
      (\ s a -> s{_rmMediaUpload = a})

-- | HTTP method used by this method.
rmHttpMethod :: Lens' RestMethod (Maybe Text)
rmHttpMethod
  = lens _rmHttpMethod (\ s a -> s{_rmHttpMethod = a})

-- | The URI path of this REST method. Should be used in conjunction with the
-- basePath property at the api-level.
rmPath :: Lens' RestMethod (Maybe Text)
rmPath = lens _rmPath (\ s a -> s{_rmPath = a})

-- | The schema for the response.
rmResponse :: Lens' RestMethod (Maybe RestMethodResponse)
rmResponse
  = lens _rmResponse (\ s a -> s{_rmResponse = a})

-- | Whether this method supports media uploads.
rmSupportsMediaUpload :: Lens' RestMethod (Maybe Bool)
rmSupportsMediaUpload
  = lens _rmSupportsMediaUpload
      (\ s a -> s{_rmSupportsMediaUpload = a})

-- | OAuth 2.0 scopes applicable to this method.
rmScopes :: Lens' RestMethod [Text]
rmScopes
  = lens _rmScopes (\ s a -> s{_rmScopes = a}) .
      _Default
      . _Coerce

-- | Whether this method supports subscriptions.
rmSupportsSubscription :: Lens' RestMethod (Maybe Bool)
rmSupportsSubscription
  = lens _rmSupportsSubscription
      (\ s a -> s{_rmSupportsSubscription = a})

-- | Details for all parameters in this method.
rmParameters :: Lens' RestMethod (Maybe RestMethodParameters)
rmParameters
  = lens _rmParameters (\ s a -> s{_rmParameters = a})

-- | A unique ID for this method. This property can be used to match methods
-- between different versions of Discovery.
rmId :: Lens' RestMethod (Maybe Text)
rmId = lens _rmId (\ s a -> s{_rmId = a})

-- | Whether this method requires an ETag to be specified. The ETag is sent
-- as an HTTP If-Match or If-None-Match header.
rmEtagRequired :: Lens' RestMethod (Maybe Bool)
rmEtagRequired
  = lens _rmEtagRequired
      (\ s a -> s{_rmEtagRequired = a})

-- | Indicates that downloads from this method should use the download
-- service URL (i.e. \"\/download\"). Only applies if the method supports
-- media download.
rmUseMediaDownloadService :: Lens' RestMethod (Maybe Bool)
rmUseMediaDownloadService
  = lens _rmUseMediaDownloadService
      (\ s a -> s{_rmUseMediaDownloadService = a})

-- | Description of this method.
rmDescription :: Lens' RestMethod (Maybe Text)
rmDescription
  = lens _rmDescription
      (\ s a -> s{_rmDescription = a})

-- | The schema for the request.
rmRequest :: Lens' RestMethod (Maybe RestMethodRequest)
rmRequest
  = lens _rmRequest (\ s a -> s{_rmRequest = a})

-- | Media upload parameters.
--
-- /See:/ 'restMethodMediaUpload' smart constructor.
data RestMethodMediaUpload = RestMethodMediaUpload
    { _rmmuProtocols :: !(Maybe RestMethodProtocolsMediaUpload)
    , _rmmuAccept    :: !(Maybe [Text])
    , _rmmuMaxSize   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestMethodMediaUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmmuProtocols'
--
-- * 'rmmuAccept'
--
-- * 'rmmuMaxSize'
restMethodMediaUpload
    :: RestMethodMediaUpload
restMethodMediaUpload =
    RestMethodMediaUpload
    { _rmmuProtocols = Nothing
    , _rmmuAccept = Nothing
    , _rmmuMaxSize = Nothing
    }

-- | Supported upload protocols.
rmmuProtocols :: Lens' RestMethodMediaUpload (Maybe RestMethodProtocolsMediaUpload)
rmmuProtocols
  = lens _rmmuProtocols
      (\ s a -> s{_rmmuProtocols = a})

-- | MIME Media Ranges for acceptable media uploads to this method.
rmmuAccept :: Lens' RestMethodMediaUpload [Text]
rmmuAccept
  = lens _rmmuAccept (\ s a -> s{_rmmuAccept = a}) .
      _Default
      . _Coerce

-- | Maximum size of a media upload, such as \"1MB\", \"2GB\" or \"3TB\".
rmmuMaxSize :: Lens' RestMethodMediaUpload (Maybe Text)
rmmuMaxSize
  = lens _rmmuMaxSize (\ s a -> s{_rmmuMaxSize = a})

-- | Details for all parameters in this method.
--
-- /See:/ 'restMethodParameters' smart constructor.
data RestMethodParameters =
    RestMethodParameters
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestMethodParameters' with the minimum fields required to make a request.
--
restMethodParameters
    :: RestMethodParameters
restMethodParameters = RestMethodParameters

-- | Supported upload protocols.
--
-- /See:/ 'restMethodProtocolsMediaUpload' smart constructor.
data RestMethodProtocolsMediaUpload = RestMethodProtocolsMediaUpload
    { _rmpmuSimple    :: !(Maybe RestMethodSimpleProtocolsMediaUpload)
    , _rmpmuResumable :: !(Maybe RestMethodResumableProtocolsMediaUpload)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestMethodProtocolsMediaUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmpmuSimple'
--
-- * 'rmpmuResumable'
restMethodProtocolsMediaUpload
    :: RestMethodProtocolsMediaUpload
restMethodProtocolsMediaUpload =
    RestMethodProtocolsMediaUpload
    { _rmpmuSimple = Nothing
    , _rmpmuResumable = Nothing
    }

-- | Supports uploading as a single HTTP request.
rmpmuSimple :: Lens' RestMethodProtocolsMediaUpload (Maybe RestMethodSimpleProtocolsMediaUpload)
rmpmuSimple
  = lens _rmpmuSimple (\ s a -> s{_rmpmuSimple = a})

-- | Supports the Resumable Media Upload protocol.
rmpmuResumable :: Lens' RestMethodProtocolsMediaUpload (Maybe RestMethodResumableProtocolsMediaUpload)
rmpmuResumable
  = lens _rmpmuResumable
      (\ s a -> s{_rmpmuResumable = a})

-- | The schema for the request.
--
-- /See:/ 'restMethodRequest' smart constructor.
data RestMethodRequest = RestMethodRequest
    { _rmrRef           :: !(Maybe Text)
    , _rmrParameterName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestMethodRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmrRef'
--
-- * 'rmrParameterName'
restMethodRequest
    :: RestMethodRequest
restMethodRequest =
    RestMethodRequest
    { _rmrRef = Nothing
    , _rmrParameterName = Nothing
    }

-- | Schema ID for the request schema.
rmrRef :: Lens' RestMethodRequest (Maybe Text)
rmrRef = lens _rmrRef (\ s a -> s{_rmrRef = a})

-- | parameter name.
rmrParameterName :: Lens' RestMethodRequest (Maybe Text)
rmrParameterName
  = lens _rmrParameterName
      (\ s a -> s{_rmrParameterName = a})

-- | The schema for the response.
--
-- /See:/ 'restMethodResponse' smart constructor.
newtype RestMethodResponse = RestMethodResponse
    { _rRef :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestMethodResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rRef'
restMethodResponse
    :: RestMethodResponse
restMethodResponse =
    RestMethodResponse
    { _rRef = Nothing
    }

-- | Schema ID for the response schema.
rRef :: Lens' RestMethodResponse (Maybe Text)
rRef = lens _rRef (\ s a -> s{_rRef = a})

-- | Supports the Resumable Media Upload protocol.
--
-- /See:/ 'restMethodResumableProtocolsMediaUpload' smart constructor.
data RestMethodResumableProtocolsMediaUpload = RestMethodResumableProtocolsMediaUpload
    { _rmrpmuPath      :: !(Maybe Text)
    , _rmrpmuMultipart :: !Bool
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestMethodResumableProtocolsMediaUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmrpmuPath'
--
-- * 'rmrpmuMultipart'
restMethodResumableProtocolsMediaUpload
    :: RestMethodResumableProtocolsMediaUpload
restMethodResumableProtocolsMediaUpload =
    RestMethodResumableProtocolsMediaUpload
    { _rmrpmuPath = Nothing
    , _rmrpmuMultipart = True
    }

-- | The URI path to be used for upload. Should be used in conjunction with
-- the basePath property at the api-level.
rmrpmuPath :: Lens' RestMethodResumableProtocolsMediaUpload (Maybe Text)
rmrpmuPath
  = lens _rmrpmuPath (\ s a -> s{_rmrpmuPath = a})

-- | True if this endpoint supports uploading multipart media.
rmrpmuMultipart :: Lens' RestMethodResumableProtocolsMediaUpload Bool
rmrpmuMultipart
  = lens _rmrpmuMultipart
      (\ s a -> s{_rmrpmuMultipart = a})

-- | Supports uploading as a single HTTP request.
--
-- /See:/ 'restMethodSimpleProtocolsMediaUpload' smart constructor.
data RestMethodSimpleProtocolsMediaUpload = RestMethodSimpleProtocolsMediaUpload
    { _rmspmuPath      :: !(Maybe Text)
    , _rmspmuMultipart :: !Bool
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestMethodSimpleProtocolsMediaUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmspmuPath'
--
-- * 'rmspmuMultipart'
restMethodSimpleProtocolsMediaUpload
    :: RestMethodSimpleProtocolsMediaUpload
restMethodSimpleProtocolsMediaUpload =
    RestMethodSimpleProtocolsMediaUpload
    { _rmspmuPath = Nothing
    , _rmspmuMultipart = True
    }

-- | The URI path to be used for upload. Should be used in conjunction with
-- the basePath property at the api-level.
rmspmuPath :: Lens' RestMethodSimpleProtocolsMediaUpload (Maybe Text)
rmspmuPath
  = lens _rmspmuPath (\ s a -> s{_rmspmuPath = a})

-- | True if this endpoint supports upload multipart media.
rmspmuMultipart :: Lens' RestMethodSimpleProtocolsMediaUpload Bool
rmspmuMultipart
  = lens _rmspmuMultipart
      (\ s a -> s{_rmspmuMultipart = a})

--
-- /See:/ 'restResource' smart constructor.
data RestResource = RestResource
    { _rrResources :: !(Maybe RestResourceResources)
    , _rrMethods   :: !(Maybe RestResourceMethods)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrResources'
--
-- * 'rrMethods'
restResource
    :: RestResource
restResource =
    RestResource
    { _rrResources = Nothing
    , _rrMethods = Nothing
    }

-- | Sub-resources on this resource.
rrResources :: Lens' RestResource (Maybe RestResourceResources)
rrResources
  = lens _rrResources (\ s a -> s{_rrResources = a})

-- | Methods on this resource.
rrMethods :: Lens' RestResource (Maybe RestResourceMethods)
rrMethods
  = lens _rrMethods (\ s a -> s{_rrMethods = a})

-- | Methods on this resource.
--
-- /See:/ 'restResourceMethods' smart constructor.
data RestResourceMethods =
    RestResourceMethods
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestResourceMethods' with the minimum fields required to make a request.
--
restResourceMethods
    :: RestResourceMethods
restResourceMethods = RestResourceMethods

-- | Sub-resources on this resource.
--
-- /See:/ 'restResourceResources' smart constructor.
data RestResourceResources =
    RestResourceResources
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestResourceResources' with the minimum fields required to make a request.
--
restResourceResources
    :: RestResourceResources
restResourceResources = RestResourceResources