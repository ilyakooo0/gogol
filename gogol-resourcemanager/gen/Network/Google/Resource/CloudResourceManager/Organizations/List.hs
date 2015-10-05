{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.CloudResourceManager.Organizations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Query Organization resources.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @CloudResourceManagerOrganizationsList@.
module Network.Google.Resource.CloudResourceManager.Organizations.List
    (
    -- * REST Resource
      OrganizationsListResource

    -- * Creating a Request
    , organizationsList'
    , OrganizationsList'

    -- * Request Lenses
    , olXgafv
    , olQuotaUser
    , olPrettyPrint
    , olUploadProtocol
    , olPp
    , olAccessToken
    , olUploadType
    , olBearerToken
    , olKey
    , olFilter
    , olPageToken
    , olOAuthToken
    , olPageSize
    , olFields
    , olCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @CloudResourceManagerOrganizationsList@ which the
-- 'OrganizationsList'' request conforms to.
type OrganizationsListResource =
     "v1beta1" :>
       "organizations" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" Int32 :>
                           QueryParam "callback" Text :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "fields" Text :>
                                   QueryParam "key" Key :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] ListOrganizationsResponse

-- | Query Organization resources.
--
-- /See:/ 'organizationsList'' smart constructor.
data OrganizationsList' = OrganizationsList'
    { _olXgafv          :: !(Maybe Text)
    , _olQuotaUser      :: !(Maybe Text)
    , _olPrettyPrint    :: !Bool
    , _olUploadProtocol :: !(Maybe Text)
    , _olPp             :: !Bool
    , _olAccessToken    :: !(Maybe Text)
    , _olUploadType     :: !(Maybe Text)
    , _olBearerToken    :: !(Maybe Text)
    , _olKey            :: !(Maybe Key)
    , _olFilter         :: !(Maybe Text)
    , _olPageToken      :: !(Maybe Text)
    , _olOAuthToken     :: !(Maybe OAuthToken)
    , _olPageSize       :: !(Maybe Int32)
    , _olFields         :: !(Maybe Text)
    , _olCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olXgafv'
--
-- * 'olQuotaUser'
--
-- * 'olPrettyPrint'
--
-- * 'olUploadProtocol'
--
-- * 'olPp'
--
-- * 'olAccessToken'
--
-- * 'olUploadType'
--
-- * 'olBearerToken'
--
-- * 'olKey'
--
-- * 'olFilter'
--
-- * 'olPageToken'
--
-- * 'olOAuthToken'
--
-- * 'olPageSize'
--
-- * 'olFields'
--
-- * 'olCallback'
organizationsList'
    :: OrganizationsList'
organizationsList' =
    OrganizationsList'
    { _olXgafv = Nothing
    , _olQuotaUser = Nothing
    , _olPrettyPrint = True
    , _olUploadProtocol = Nothing
    , _olPp = True
    , _olAccessToken = Nothing
    , _olUploadType = Nothing
    , _olBearerToken = Nothing
    , _olKey = Nothing
    , _olFilter = Nothing
    , _olPageToken = Nothing
    , _olOAuthToken = Nothing
    , _olPageSize = Nothing
    , _olFields = Nothing
    , _olCallback = Nothing
    }

-- | V1 error format.
olXgafv :: Lens' OrganizationsList' (Maybe Text)
olXgafv = lens _olXgafv (\ s a -> s{_olXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
olQuotaUser :: Lens' OrganizationsList' (Maybe Text)
olQuotaUser
  = lens _olQuotaUser (\ s a -> s{_olQuotaUser = a})

-- | Returns response with indentations and line breaks.
olPrettyPrint :: Lens' OrganizationsList' Bool
olPrettyPrint
  = lens _olPrettyPrint
      (\ s a -> s{_olPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olUploadProtocol :: Lens' OrganizationsList' (Maybe Text)
olUploadProtocol
  = lens _olUploadProtocol
      (\ s a -> s{_olUploadProtocol = a})

-- | Pretty-print response.
olPp :: Lens' OrganizationsList' Bool
olPp = lens _olPp (\ s a -> s{_olPp = a})

-- | OAuth access token.
olAccessToken :: Lens' OrganizationsList' (Maybe Text)
olAccessToken
  = lens _olAccessToken
      (\ s a -> s{_olAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olUploadType :: Lens' OrganizationsList' (Maybe Text)
olUploadType
  = lens _olUploadType (\ s a -> s{_olUploadType = a})

-- | OAuth bearer token.
olBearerToken :: Lens' OrganizationsList' (Maybe Text)
olBearerToken
  = lens _olBearerToken
      (\ s a -> s{_olBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
olKey :: Lens' OrganizationsList' (Maybe Key)
olKey = lens _olKey (\ s a -> s{_olKey = a})

-- | An optional query string used to filter the Organizations to be return
-- in the response. Filter rules are case-insensitive. Organizations may be
-- filtered by \`owner.directoryCustomerId\` or by \`domain\`, where the
-- domain is a Google for Work domain, for example: |Filter|Description|
-- |------|-----------| |owner.directorycustomerid:123456789|Organizations
-- with \`owner.directory_customer_id\` equal to \`123456789\`.|
-- |domain:google.com|Organizations corresponding to the domain
-- \`google.com\`.| This field is optional.
olFilter :: Lens' OrganizationsList' (Maybe Text)
olFilter = lens _olFilter (\ s a -> s{_olFilter = a})

-- | A pagination token returned from a previous call to ListOrganizations
-- that indicates from where listing should continue. This field is
-- optional.
olPageToken :: Lens' OrganizationsList' (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | OAuth 2.0 token for the current user.
olOAuthToken :: Lens' OrganizationsList' (Maybe OAuthToken)
olOAuthToken
  = lens _olOAuthToken (\ s a -> s{_olOAuthToken = a})

-- | The maximum number of Organizations to return in the response. This
-- field is optional.
olPageSize :: Lens' OrganizationsList' (Maybe Int32)
olPageSize
  = lens _olPageSize (\ s a -> s{_olPageSize = a})

-- | Selector specifying which fields to include in a partial response.
olFields :: Lens' OrganizationsList' (Maybe Text)
olFields = lens _olFields (\ s a -> s{_olFields = a})

-- | JSONP
olCallback :: Lens' OrganizationsList' (Maybe Text)
olCallback
  = lens _olCallback (\ s a -> s{_olCallback = a})

instance GoogleAuth OrganizationsList' where
        authKey = olKey . _Just
        authToken = olOAuthToken . _Just

instance GoogleRequest OrganizationsList' where
        type Rs OrganizationsList' =
             ListOrganizationsResponse
        request = requestWithRoute defReq resourceManagerURL
        requestWithRoute r u OrganizationsList'{..}
          = go _olXgafv _olUploadProtocol (Just _olPp)
              _olAccessToken
              _olUploadType
              _olBearerToken
              _olFilter
              _olPageToken
              _olPageSize
              _olCallback
              _olQuotaUser
              (Just _olPrettyPrint)
              _olFields
              _olKey
              _olOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrganizationsListResource)
                      r
                      u
