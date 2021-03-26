module Web.Types where
import IHP.Prelude
import qualified IHP.Controller.Session
import qualified IHP.ControllerSupport as ControllerSupport
import IHP.ModelSupport
import Application.Helper.Controller
import IHP.ViewSupport
import Generated.Types

import IHP.LoginSupport.Types
import Generated.Types

instance HasNewSessionUrl User where
    newSessionUrl _ = "/NewSession"

data SessionsController
    = NewSessionAction
    | CreateSessionAction
    | DeleteSessionAction
    deriving (Eq, Show, Data)

data WebApplication = WebApplication deriving (Eq, Show)

data StaticPagesController
    = HomeAction
    | AboutAction
    deriving (Eq, Show, Data)

data UsersController
    = UsersAction
    | NewUserAction
    | ShowUserAction { userId :: !(Id User) }
    | CreateUserAction
    | EditUserAction { userId :: !(Id User) }
    | UpdateUserAction { userId :: !(Id User) }
    | DeleteUserAction { userId :: !(Id User) }
    deriving (Eq, Show, Data)
