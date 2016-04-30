        <jsp:include page="header.jsp"></jsp:include>

        <section class="contact">
    <div class="container">
        <div class="row">
                    <h2 class="section_heading text-center">Contact Us</h2>
                    <hr class="hrTheme">
            <div class="col-sm-6 col-md-6 col-lg-6">
            <h3 class="sub_heading">Send us a Message</h3>
                <div class="contact_form">
                <form action="quizcontact.jsp" method="POST" role="form">
                    <div class="form-group col-md-12 col-sm-12">
                        <input type="text" name="name" class="form-control" id="" placeholder="Full name">
                    </div>
                    <div class="form-group col-md-12 col-sm-12">
                        <input type="text" name="phone" class="form-control" id="" placeholder="XXX-XX-XXX">
                    </div>
                    <div class="form-group  col-md-12 col-sm-12">
                        <input type="email" name="email" class="form-control" id="" placeholder="jsmith@example.com">
                    </div>
                    <div class="form-group  col-md-12 col-sm-12">
                        <textarea name="message" class="form-control" rows="5" placeholder="Questions, feedback, Suggestions..."></textarea>
                    </div>
                    <div class="col-md-12 col-sm-12">
                        <button type="submit" class="btn btn-lg btn-primary">Submit</button>
                    </div>
                </form>                    
                </div>

            </div>
            <div class="col-md-6 col-sm-6 col-sm-6">
                <div class="contact_address">
                    <h3 class="sub_heading">Get in touch</h3>
                    <ul class="contact_address_details">
                        <li><i class="fa fa-phone"></i> 415-555-1212</li>
                        <li><i class="fa fa-map-marker"></i> San Francisco, California</li>
                        <li><i class="fa fa-envelope-o"></i> info@eatz.menu</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="contact_map">
     <div class="map_media">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3502.035762341665!2d77.383346607472!3d28.628690251036335!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ceff98aac2c65%3A0x924968befbf06b77!2sD-242%2C+D+Block%2C+Sector+63%2C+Noida%2C+Uttar+Pradesh+201301!5e0!3m2!1sen!2sin!4v1454672992277" frameborder="0" style="border:0" allowfullscreen></iframe>     
     </div>
    <div class="map_overlay">
        <div class="container">
            <div class="col-md-10 col-md-offset-1 text-center">
                <button class="btn btn-primary1" id="map_marker">See location on map</button>
            </div>
        </div>
    </div>
</section>

            </div>
<script>
    $(document).ready(function() {
        $('#map_marker').click(function(event) {
            $('.contact_map .map_overlay').slideUp(400);
        });
    });
</script>

            <jsp:include page="footer.html"></jsp:include>