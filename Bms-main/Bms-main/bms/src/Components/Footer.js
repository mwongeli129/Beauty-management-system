import React from 'react';

const Footer = () => {
  return (
    <>
      <footer>
        <div className="dylan">
          <h1>Luxe Salon</h1>
          <h1 className="Stay-connected">Stay Connected <br />Follow Us for Exclusive Offers and Updates!</h1>
        </div>
        <div className="Copyright">
          <p className="Copyright">@Copyright - All Rights Reserved. Designed by Luxe Salon</p>
        </div>
        <div className="follow">
          <h1>Follow us</h1>
          <div className="follow-h3">
            <h3>Facebook</h3>
            <h3>LinkedIn</h3>
            <h3>Twitter</h3>
            <h3>Instagram</h3>
          </div>
        </div>
        <div className="links">
          <h1>Quick Links</h1>
          <div className="links-div">
            <a href="/Signup"><h3>Get Started</h3></a>
            <a href="/Login"><h3>Login</h3></a>
            <a href="/Booking"><h3>Book Now</h3></a>
            <a href="/Team"><h3>Our Team</h3></a>
            <a href="/Services"><h3>Our Services</h3></a>
            <a href="/Contact"><h3>Contact Us</h3></a>
          </div>
        </div>
      </footer>
    </>
  );
};

export default Footer;
