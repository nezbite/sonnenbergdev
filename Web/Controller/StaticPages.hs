module Web.Controller.StaticPages where

import Web.Controller.Prelude
import Web.View.StaticPages.Home
import Web.View.StaticPages.About


instance Controller StaticPagesController where

    action HomeAction = do
        render HomeView

    action AboutAction = do
        render AboutView