module Web.FrontController where
import IHP.RouterPrelude
import IHP.ControllerSupport
import Generated.Types
import Web.Types
import Web.Controller.Prelude
import Web.View.Layout (defaultLayout)
import IHP.LoginSupport.Middleware
import Web.Controller.Sessions


-- Controller Imports
import Web.Controller.Users
import Web.Controller.StaticPages
import IHP.Welcome.Controller

instance FrontController WebApplication where
    controllers = 
        [ startPage ShowHomeAction
        , parseRoute @SessionsController
        -- Generator Marker
        , parseRoute @UsersController
        , parseRoute @StaticPagesController
        ]

instance InitControllerContext WebApplication where
    initContext = do
        initAuthentication @User
        setLayout defaultLayout