import React, { Component } from 'react'

class About extends Component {
    render() {
        return (
           <div className="aboutus">
                <div className="bg-img">
            <div className="welcome">
                <h1>ABOUT US</h1> 
                <p><ul>
                   <li>Welcome to Our Bookstore! Our bookstore has been at the heart of vibrant province Ontario for over</li> 
                    <li>3 years.Not only is the store a valuable resource for procuring unique, quality books. At our bookstore</li>
                    <li> we consider ourselves champions of the printed word. We are dedicated to stocking the very best in</li> 
                    <li> new Canadian and international fiction, a vast and carefully considered backlist of top-notch Mystery</li>
                   <li>  section! and thought-provoking non-fiction. Our children’s section features a picture books and  </li>
                   <li> young-adult novels. We are happy to special-order anything else you might need and we pride ourselves.</li>
                   </ul>
                </p>
            </div>
        </div>

        <div className ="grid-container">
            <div className="box">
                <h3>QUALITY</h3>
                <p>
                    Our guests deserve the best and nothing less. With over 2+ years in the book industry,we've sourced the best  products through a loyal relationship with our longtime suppliers.Something we strive to maintain and continue to deliver to our guests through our carefully composed inventory.
                </p>  
            </div>
            <div className="box" >
                <h3>AFFORDABILITY</h3>
                <p>
                    In today's economy,why should the guest be affected by hyperinflation when trying to enjoy a book reading?At our bookstore we ensure that our prices are low-making sense for our guests and our operators. The honest to goodness fee and operational efficiencies allows us to do so.
                </p>
            </div>
            <div className="box" >
                <h3>EXPERIENCE</h3>
                <p>
                    Your hospitality is our priority.from the moment you enter in our bookstore grounds,we've implemented high standards to ensure you have a great experience.We know the importance of making you feel comfortable and taken care of.After all,you chose to visit us rather than reading ebook.
                </p>
            </div>
        </div>

        <div className="text2">
            <div className="bg-img2"> 
                <ul>
                    <h3 className="list">OUR OPENING HOURS</h3>
                    <li>MON-WED : 9AM To 5PM</li>
                    <li>THU-FRI : 9AM To 9PM</li>
                    <li>SAT-SUN : 9AM To 3PM</li>
                </ul>
            </div>
        </div>
        <div className="locations">OUR STORE LOCATIONS</div>
        <div className ="grid-container3">
      
        <div className="box">
            <ul>
                    <li>901 Yonge St</li>
                    <li>Kitchener,ontario</li>
                    <li>437-999-8883</li>
                </ul>  
            </div>
            <div className="box" >
            <ul>
                    <li>551 Ottawa st</li>
                    <li>Missisauga,Ontario</li>
                    <li>534-567-4563</li>
                </ul>  
            </div>
            <div className="box" >
            <ul>
                    <li>73 weber st</li>
                    <li>Toronto,Ontario</li>
                    <li>674-456-2342</li>
                </ul>  
            </div>
        </div>

        <div className="news">
            <h2>LATEST NEWS & UPDATES</h2>
            <div className ="grid-container2">
                <div className="box3">
            
                    <img 
                    src={require("../images/1.jpg")} 
                    className={img} 
                    alt="board" />
                    <div className="overlay">

                        <img 
                        src={require("../images/11.jpg")}
                        className={img} 
                         alt="newopening"/>
                    </div>  
                    <h3>New Store opening</h3>
                </div>
                <div className="box3" >
                    <img 
                    src={require("../images/2.jpg")}
                    className={img}
                     alt="book"/>
                    <div className="overlay"> 
                        <img 
                        src={require("../images/22.jpg")}
                        className={img} 
                         alt="book"/>
                    </div>  
                    <h3>Best of this month </h3>
                </div>
                <div className="box3" >
                    <img 
                    src={require("../images/3.jpg")}
                    className={img} 
                    alt="opening"  />
                    <div className="overlay">
                        <img 
                        src={require("../images/33.png")}
                        className={img} 
                         alt="hands"/>
                    </div>  
                    <h3>COVID-19 Updates</h3>
                </div>
            </div> 
        </div>
        
           </div> 
        )
    }
}
const img = {
    width: '100px',
    margin: '200px auto 200px auto',
    display: 'block'
}

export default About
