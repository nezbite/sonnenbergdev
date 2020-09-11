module Web.Controller.StaticPages where

import Web.Controller.Prelude
import Web.View.StaticPages.Home

instance Controller StaticPagesController where

    action ShowHomeAction = do
        render HomeView