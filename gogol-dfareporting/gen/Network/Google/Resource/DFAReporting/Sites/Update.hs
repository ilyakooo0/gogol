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
-- Module      : Network.Google.Resource.DFAReporting.Sites.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing site.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSitesUpdate@.
module Network.Google.Resource.DFAReporting.Sites.Update
    (
    -- * REST Resource
      SitesUpdateResource

    -- * Creating a Request
    , sitesUpdate'
    , SitesUpdate'

    -- * Request Lenses
    , suQuotaUser
    , suPrettyPrint
    , suUserIP
    , suProFileId
    , suPayload
    , suKey
    , suOAuthToken
    , suFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSitesUpdate@ which the
-- 'SitesUpdate'' request conforms to.
type SitesUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sites" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Site :> Put '[JSON] Site

-- | Updates an existing site.
--
-- /See:/ 'sitesUpdate'' smart constructor.
data SitesUpdate' = SitesUpdate'
    { _suQuotaUser   :: !(Maybe Text)
    , _suPrettyPrint :: !Bool
    , _suUserIP      :: !(Maybe Text)
    , _suProFileId   :: !Int64
    , _suPayload     :: !Site
    , _suKey         :: !(Maybe Key)
    , _suOAuthToken  :: !(Maybe OAuthToken)
    , _suFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suQuotaUser'
--
-- * 'suPrettyPrint'
--
-- * 'suUserIP'
--
-- * 'suProFileId'
--
-- * 'suPayload'
--
-- * 'suKey'
--
-- * 'suOAuthToken'
--
-- * 'suFields'
sitesUpdate'
    :: Int64 -- ^ 'profileId'
    -> Site -- ^ 'payload'
    -> SitesUpdate'
sitesUpdate' pSuProFileId_ pSuPayload_ =
    SitesUpdate'
    { _suQuotaUser = Nothing
    , _suPrettyPrint = True
    , _suUserIP = Nothing
    , _suProFileId = pSuProFileId_
    , _suPayload = pSuPayload_
    , _suKey = Nothing
    , _suOAuthToken = Nothing
    , _suFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
suQuotaUser :: Lens' SitesUpdate' (Maybe Text)
suQuotaUser
  = lens _suQuotaUser (\ s a -> s{_suQuotaUser = a})

-- | Returns response with indentations and line breaks.
suPrettyPrint :: Lens' SitesUpdate' Bool
suPrettyPrint
  = lens _suPrettyPrint
      (\ s a -> s{_suPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
suUserIP :: Lens' SitesUpdate' (Maybe Text)
suUserIP = lens _suUserIP (\ s a -> s{_suUserIP = a})

-- | User profile ID associated with this request.
suProFileId :: Lens' SitesUpdate' Int64
suProFileId
  = lens _suProFileId (\ s a -> s{_suProFileId = a})

-- | Multipart request metadata.
suPayload :: Lens' SitesUpdate' Site
suPayload
  = lens _suPayload (\ s a -> s{_suPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
suKey :: Lens' SitesUpdate' (Maybe Key)
suKey = lens _suKey (\ s a -> s{_suKey = a})

-- | OAuth 2.0 token for the current user.
suOAuthToken :: Lens' SitesUpdate' (Maybe OAuthToken)
suOAuthToken
  = lens _suOAuthToken (\ s a -> s{_suOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
suFields :: Lens' SitesUpdate' (Maybe Text)
suFields = lens _suFields (\ s a -> s{_suFields = a})

instance GoogleAuth SitesUpdate' where
        authKey = suKey . _Just
        authToken = suOAuthToken . _Just

instance GoogleRequest SitesUpdate' where
        type Rs SitesUpdate' = Site
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SitesUpdate'{..}
          = go _suProFileId _suQuotaUser (Just _suPrettyPrint)
              _suUserIP
              _suFields
              _suKey
              _suOAuthToken
              (Just AltJSON)
              _suPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SitesUpdateResource)
                      r
                      u
