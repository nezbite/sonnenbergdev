module Web.View.StaticPages.Edit where
import Web.View.Prelude

data EditView = EditView { staticPage :: StaticPage }

instance View EditView ViewContext where
    html EditView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={StaticPagesAction}>StaticPages</a></li>
                <li class="breadcrumb-item active">Edit StaticPage</li>
            </ol>
        </nav>
        <h1>Edit StaticPage</h1>
        {renderForm staticPage}
    |]

renderForm :: StaticPage -> Html
renderForm staticPage = formFor staticPage [hsx|

    {submitButton}
|]
