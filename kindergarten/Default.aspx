<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="kindergarten.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <style type="text/css">
        /** {
            border: 1px solid #666;
        }*/

        .col-room {
            padding: 20px;
        }
        .room-container {
            box-shadow: 0px 0px 10px rgba(0,0,0,0.3);
        }

            .room-container .cover {
                height: 150px;
                position: relative;
                background-size: cover;
                background-position: center center;
            }

                .room-container .cover h3 {
                    position: absolute;
                    bottom: 10px;
                    font-size: 20px;
                    padding: 5px 15px;
                    background-color: #fff;
                }

            .room-container .info {
                padding: 10px;
            }

                .room-container .info h5 {
                    font-size: 12px;
                }

                .room-container .info .final_price {
                    float: right;
                    color: #DB4343;
                }

                    .room-container .info .final_price:after {
                        content: "$";
                    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="app">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <h1>歸真櫻花班</h1>
                        <hr />
                    </div>
                    <div class="col-sm-9">
                        <h1>學校生活</h1>
                        <hr />
                        <div class="row">
                            <div class="col-sm-4" v-for="photo in album">
                                <room :photo_data="photo" :hotel_discount="discount"></room>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
    <script type="text/javascript">
        var album = [
            {
                "Date": "2023/8/18",
                "URL": "https://drive.google.com/file/d/1_Zid9SxJgbGcG7NJHGpDRhhszxFsgsvC/view?usp=drive_link-00128.MTS",
                "FileName": "128.MTS",
                "Class": "櫻花",
                "Memo": "吃早餐",
                "HasMochi": "V",
                "frameURL": "<iframe src=\"https://drive.google.com/file/d/1_Zid9SxJgbGcG7NJHGpDRhhszxFsgsvC/preview\" width=\"265\" allow=\"autoplay\"></iframe> ",
                "": ""
            },
            {
                "Date": "2023/8/18",
                "URL": "https://drive.google.com/file/d/1ZrX83YgWD8B7U-MRODbrqNE-KwlQPmbv/view?usp=sharing-00129.MTS",
                "FileName": "129.MTS",
                "Class": "櫻花",
                "Memo": "吃早餐",
                "HasMochi": "V",
                "frameURL": "<iframe src=\"https://drive.google.com/file/d/1ZrX83YgWD8B7U-MRODbrqNE-KwlQPmbv/preview\" width=\"265\" allow=\"autoplay\"></iframe> ",
                "": ""
            },
            {
                "Date": "2023/8/18",
                "URL": "https://drive.google.com/file/d/1w8LaFSmW72NZY0vWnaXhl1dgYR3Phg2b/view?usp=drive_link-00133.MTS",
                "FileName": "133.MTS",
                "Class": "櫻花",
                "Memo": "吃早餐",
                "HasMochi": "V",
                "frameURL": "<iframe src=\"https://drive.google.com/file/d/1w8LaFSmW72NZY0vWnaXhl1dgYR3Phg2b/preview\" width=\"265\" allow=\"autoplay\"></iframe> ",
                "": ""
            },
            {
                "Date": "2023/8/29",
                "URL": "https://www.facebook.com/100000130406313/videos/248047661510345/",
                "FileName": "C0015",
                "Class": "全校",
                "Memo": "早晨08:10~08:30活動花絮",
                "HasMochi": "V",
                "frameURL": "<iframe src=\"https://www.facebook.com/plugins/video.php?height=314&href=https%3A%2F%2Fwww.facebook.com%2F100000130406313%2Fvideos%2F248047661510345%2F&show_text=false&width=560&t=0\" width=\"265\"style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowfullscreen=\"true\" allow=\"autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share\" allowFullScreen=\"true\"></iframe> ",
                "": ""
            },
            {
                "Date": "2023/8/29",
                "URL": "https://www.facebook.com/100000130406313/videos/984104509589251/",
                "FileName": "C0016",
                "Class": "全校",
                "Memo": "早晨08:10~08:30活動花絮",
                "HasMochi": "X",
                "frameURL": "<iframe src=\"https://www.facebook.com/plugins/video.php?height=314&href=https%3A%2F%2Fwww.facebook.com%2F100000130406313%2Fvideos%2F984104509589251%2F&show_text=false&width=560&t=0\" width=\"265\"style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowfullscreen=\"true\" allow=\"autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share\" allowFullScreen=\"true\"></iframe> ",
                "": ""
            },
            {
                "Date": "2023/8/29",
                "URL": "https://www.facebook.com/100000130406313/videos/1361676621452663/",
                "FileName": "C0017",
                "Class": "全校",
                "Memo": "早晨08:10~08:30活動花絮",
                "HasMochi": "V",
                "frameURL": "<iframe src=\"https://www.facebook.com/plugins/video.php?height=314&href=https%3A%2F%2Fwww.facebook.com%2F100000130406313%2Fvideos%2F1361676621452663%2F&show_text=false&width=560&t=0\" width=\"265\"style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowfullscreen=\"true\" allow=\"autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share\" allowFullScreen=\"true\"></iframe> ",
                "": ""
            },
            {
                "Date": "2023/8/29",
                "URL": "https://www.facebook.com/100000130406313/videos/1385408548718957/",
                "FileName": "C0018",
                "Class": "全校",
                "Memo": "早晨08:10~08:30活動花絮",
                "HasMochi": "X",
                "frameURL": "<iframe src=\"https://www.facebook.com/plugins/video.php?height=314&href=https%3A%2F%2Fwww.facebook.com%2F100000130406313%2Fvideos%2F1385408548718957%2F&show_text=false&width=560&t=0\" width=\"265\"style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowfullscreen=\"true\" allow=\"autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share\" allowFullScreen=\"true\"></iframe> ",
                "": ""
            },
            {
                "Date": "2023/8/29",
                "URL": "https://www.facebook.com/100000130406313/videos/3471356603118255/",
                "FileName": "C0019",
                "Class": "全校",
                "Memo": "早晨08:10~08:30活動花絮",
                "HasMochi": "X",
                "frameURL": "<iframe src=\"https://www.facebook.com/plugins/video.php?height=314&href=https%3A%2F%2Fwww.facebook.com%2F100000130406313%2Fvideos%2F3471356603118255%2F&show_text=false&width=560&t=0\" width=\"265\"style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowfullscreen=\"true\" allow=\"autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share\" allowFullScreen=\"true\"></iframe> ",
                "": ""
            },
            {
                "Date": "2023/8/29",
                "URL": "https://www.facebook.com/100000130406313/videos/334803138884286/",
                "FileName": "C0020",
                "Class": "全校",
                "Memo": "早晨08:10~08:30活動花絮",
                "HasMochi": "V",
                "frameURL": "<iframe src=\"https://www.facebook.com/plugins/video.php?height=314&href=https%3A%2F%2Fwww.facebook.com%2F100000130406313%2Fvideos%2F334803138884286%2F&show_text=false&width=560&t=0\" width=\"265\"style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowfullscreen=\"true\" allow=\"autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share\" allowFullScreen=\"true\"></iframe> ",
                "": ""
            }
        ];

        const vm = Vue.createApp({
            data() {
                return {
                    album: album,
                    discount: 0.9
                }
            }
        });

        vm.component('room', {
            template: '<div class="col-room"><div class="room-container"><div class="cover"><p v-html="photo_data.frameURL"></p></div><div class="info"><h5>{{ photo_data.Date }}</h5><h5>{{ photo_data.Memo }}</h5><h5>{{ photo_data.FileName }}</h5></div></div></div>',
            props: ['photo_data', 'hotel_discount'],
            computed: {
                final_discount: function () {
                    return this.photo_data.discount * this.hotel_discount;
                },
                final_discount_show: function () {
                    return parseInt(this.final_discount * 100);
                },
                final_price: function () {
                    return parseInt(this.photo_data.price * this.photo_data.discount * this.hotel_discount);
                },
                bg_css: function () {
                    /*return { "background-image": "url('" + this.room_data.cover + "')" };*/
                    return this.photo_data.cover;
                }
            }
        });

        vm.mount('#app');
    </script>
</body>
</html>
