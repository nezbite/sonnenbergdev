module Web.FrontController where
import IHP.RouterPrelude
import IHP.ControllerSupport
import Generated.Types
import Web.Types

-- Controller Imports
import Web.Controller.StaticPages
import IHP.Welcome.Controller

instance FrontController WebApplication where
    controllers = 
        [ startPage ShowHomeAction
        , parseRoute @StaticPagesController
        ]

instance InitControllerContext WebApplication
