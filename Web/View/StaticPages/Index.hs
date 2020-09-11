module Web.View.StaticPages.Index where
import Web.View.Prelude

data IndexView = IndexView { staticPages :: [StaticPage] }

instance View IndexView ViewContext where
    html IndexView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item active"><a href={StaticPagesAction}>StaticPages</a></li>
            </ol>
        </nav>
        <h1>Index <a href={pathTo NewStaticPageAction} class="btn btn-primary ml-4">+ New</a></h1>
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th>StaticPage</th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>{forEach staticPages renderStaticPage}</tbody>
            </table>
        </div>
    |]


renderStaticPage staticPage = [hsx|
    <tr>
        <td>{staticPage}</td>
        <td><a href={ShowStaticPageAction (get #id staticPage)}>Show</a></td>
        <td><a href={EditStaticPageAction (get #id staticPage)} class="text-muted">Edit</a></td>
        <td><a href={DeleteStaticPageAction (get #id staticPage)} class="js-delete text-muted">Delete</a></td>
    </tr>
|]
