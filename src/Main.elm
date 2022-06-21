module Main exposing (..)

import Browser
import Html exposing (Html, a, div, footer, h1, h2, h3, header, img, li, main_, nav, p, section, text, ul)
import Html.Attributes exposing (alt, class, href, src, target)



---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div [ class "container" ]
        [ header [ class "header" ]
            [ h1 [ class "site-title" ] [ text "Sumile Lab" ]
            , nav []
                [ ul [ class "list" ]
                    [ li [ class "list-item" ] [ text "About" ]
                    , li [ class "list-item" ] [ text "Contact" ]
                    ]
                ]
            ]
        , main_ []
            [ div [ class "main-visual" ]
                [ img [ src "/mainvisual.png", alt "Main Visual" ] [] ]
            , section []
                [ h2 [ class "self-introduction" ] [ text "About" ]
                , div [ class "introduce-wrapper" ]
                    [ img [ class "introduce-icon", src "/aboutme.JPG", alt "About Me" ]
                        []
                    , div [ class "introduce" ]
                        [ h3 []
                            [ text "marbull" ]
                        , p []
                            [ text "Sumile Lab is a web development company that specializes in building web applications." ]
                        ]
                    ]
                ]
            , section []
                [ h2 [ class "contact-us" ] [ text "Contact" ]
                , div [ class "contact-wrapper" ]
                    [ img [ class "contact-icon", src "/Twitter-icon-blue.svg", alt "Contact-Us" ]
                        []
                    , div [ class "contact" ]
                        [ h3 []
                            [ a [ href "https://twitter.com/_marbull9929", target "_blank" ]
                                [ text "_@marbull9929" ]
                            ]
                        , p []
                            [ text "I,m a programmer and love to build web applications. If you want to contact me, please send a message. Thanks!" ]
                        ]
                    ]
                ]
            ]
        , footer [ class "footer" ]
            [ p [ class "copyright" ]
                [ text "Copyright © Sumile Lab. All rights reserved."
                ]
            ]
        ]



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
